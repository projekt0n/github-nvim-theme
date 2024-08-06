local util = require('github-theme.util')
local api, ts = vim.api, vim.treesitter
local cmd = util.is_nvim and vim.cmd or vim.command
local augroup = 'github-theme.interactive'
local augroup_live_colors = augroup .. '.live_colors'
local M = {}

pcall(api.nvim_del_augroup_by_name, augroup)
pcall(api.nvim_del_augroup_by_name, augroup_live_colors)

-- TODO: move to util module?
---@param tbl table the target search in
---@param keypath string[]|string
---@return any? value # value in `tbl` at `keypath`, or `nil` if unsuccessful
---@return any? last # the last/deepest value reached if unsuccessful, otherwise `nil`
local function keypath_get(tbl, keypath)
  if type(keypath) == 'string' then
    keypath = vim.split(keypath, '.', { plain = true, trimempty = true })
  end

  local current = tbl
  for _, k in ipairs(keypath) do
    if type(current) ~= 'table' then
      return nil, current
    end

    current = current[k]
  end

  return current
end

---@return integer id autocmd id
function M.attach()
  vim.g.github_theme_debug = true

  return api.nvim_create_autocmd('BufWritePost', {
    group = api.nvim_create_augroup(augroup, { clear = true }),
    buffer = 0,
    desc = 'Reloads user config when the buffer is written',
    nested = true,
    callback = require('github-theme.interactive').execute,
  })
end

function M.execute(info)
  require('github-theme.config').reset()
  require('github-theme.override').reset()
  cmd(([[
    %s %%
    colorscheme %s
]]):format(vim.bo[info.buf].ft == 'lua' and 'luafile' or 'source', vim.g.colors_name))
end

---**EXPERIMENTAL**
---
---For internal development. Displays colors live, inline in the current buffer and
---refreshes on write. Works with palette files and module files at the moment, although
---there may be some bugs. Module files display in/with the current theme/colorscheme.
---
---TODO: support other files as well, expose via cmd?, etc.
---@param enable? boolean
function M.live_colors(enable)
  local ns = api.nvim_create_namespace(augroup_live_colors)

  local function get_nodes(node, src, typ, cb)
    local stack = {}

    -- {{{ Queries
    local q1 = ts.query.parse(
      'lua',
      [[
        ; query
        (assignment_statement
          .
          (variable_list) @k (#vim-match? @k "\\m^\\%(palette\\|pal\\|spec\\)\\%(\\.\\w\\+\\)*$")
          .
          "="
          .
          (expression_list
            (table_constructor) @defs
          )
        )
]]
    )
    local q2 = ts.query.parse(
      'lua',
      [[
        ; query
        (field
          name: [
            (_ content: (_) @k)
            (_ !content) @k
          ]
          value: (_) @v
        ) @field

        (table_constructor
          "}" @tbl_end
          .
        )
]]
    )

    local modquery = ts.query.parse(
      'lua',
      [[
        ; query
        (function_declaration
          name: (_) @fname (#match? @fname "^M[.:]get$")
          body: (_
            (return_statement
              (expression_list
                (table_constructor
                  (field
                    name: [
                      (_ content: (_) @k)
                      (_ !content) @k
                    ]
                    value: (table_constructor) @v
                  ) @field
                )
              )
            )
          )
        )
]]
    )

    -- Map capture names to their ID
    local cap1, cap2, cap3 = {}, {}, {}
    for _, v in ipairs({
      { q1.captures, cap1 },
      { q2.captures, cap2 },
      { modquery.captures, cap3 },
    }) do
      for id, name in pairs(v[1]) do
        v[2][name] = id
      end
    end
    -- }}}

    local function matched_node(match, cap_id)
      vim.validate({
        match = { match, { 'table', 'userdata' } },
        cap_id = { cap_id, 'number' },
      })

      local nodes = match[cap_id]
      if nodes then
        assert(#nodes == 1)
        return nodes[1]
      end
    end

    ---@param node TSNode
    ---@diagnostic disable-next-line: redefined-local
    local function inner(node)
      for _pat, match, meta in q2:iter_matches(node, src, nil, nil, { all = true }) do
        if matched_node(match, cap2.tbl_end) then
          table.remove(stack)
        else
          local knode = assert(matched_node(match, cap2.k))
          local knode_text = ts.get_node_text(knode, src, { metadata = meta[cap2.k] })
          local vnode = assert(matched_node(match, cap2.v))

          if vnode:type() == 'table_constructor' then
            table.insert(stack, knode_text)
          else
            cb({
              field = assert(matched_node(match, cap2.field)),
              knode = knode,
              vnode = vnode,
              keypath = table.concat(stack, '.') .. '.' .. knode_text,
            })
          end
        end
      end
    end

    if typ == 'mod' then
      for _pat, match, meta in modquery:iter_matches(node, src, nil, nil, { all = true }) do
        local knode = assert(matched_node(match, cap3.k))
        local vnode = assert(matched_node(match, cap3.v))

        cb({
          field = assert(matched_node(match, cap3.field)),
          knode = knode,
          vnode = vnode,
          keypath = ts.get_node_text(knode, src, { metadata = meta[cap3.k] }),
        })
      end
    else
      for _pat, match, meta in q1:iter_matches(node, src, nil, nil, { all = true }) do
        ---@diagnostic disable-next-line: redefined-local
        local node = assert(matched_node(match, cap1.defs))
        local k = matched_node(match, cap1.k)
            and ts.get_node_text(
              matched_node(match, cap1.k),
              src,
              { metadata = meta[cap1.k] }
            )
          or ''

        for part in k:gmatch('[^.]+') do
          table.insert(stack, part)
        end

        inner(node)

        for _ in k:gmatch('[^.]+') do
          table.remove(stack)
        end
      end
    end
  end

  local function disp_colors(buf, nodes, colors, typ, theme)
    for _, v in ipairs(nodes) do
      local lnum = v.vnode:end_()
      local color = typ == 'mod' and '' or keypath_get(colors, v.keypath)

      if type(color) == 'string' then
        local def, grp

        if typ == 'mod' then
          grp, def = 'github.' .. v.keypath, vim.deepcopy(colors[v.keypath], true) or {}
          if (def.style or 'NONE') ~= 'NONE' then
            for s in def.style:gmatch('[^,]+') do
              def[s] = true
            end
          end
          def.style = nil
        else
          if v.keypath:find('bg') or v.keypath:find('sel%d+$') then
            def, grp = { bg = color }, theme .. v.keypath .. '-bg'
          else
            def, grp = { fg = color }, theme .. v.keypath .. '-fg'
          end
        end

        def.force = true
        api.nvim_set_hl(0, grp, def)
        api.nvim_buf_set_extmark(buf, ns, lnum, select(2, v.field:start()), {
          end_row = lnum,
          strict = false,
          undo_restore = true,
          invalidate = true,
          spell = false,
          right_gravity = true,
          end_right_gravity = true,
          hl_mode = 'combine',
          virt_text_pos = 'inline',
          virt_text = { { ' Example ', grp }, { ' ' } },
        })
      end
    end
  end

  local function refresh(opts)
    opts = opts or {}
    local buf = opts.buf or 0
    local fname = api.nvim_buf_get_name(buf)
    local reqname = fname:gsub('%.lua$', ''):gsub('[/\\]', '.'):gsub('^.-%.lua%.', '')
    local typ = reqname:find([[^github[-_]*theme%.palette%.github[^.]+$]]) and 'pal'
      or (reqname:find([[^github[-_]*theme%.group%.modules%.[^.]+$]]) and 'mod')

    if not typ then
      return
    end

    api.nvim_buf_clear_namespace(buf, ns, 0, -1)
    local env

    do
      local reloaded = {}
      env = setmetatable({
        require = function(...)
          if not reloaded[...] then
            reloaded[...] = ...
            package.loaded[...] = nil
          end
          return _G.require(...)
        end,
      }, { __index = _G })

      setfenv(env.require, env)
    end

    -- Be quiet about syntax errors and just return
    local ok, mod = pcall(env.require, reqname)

    if ok then
      local defs, theme
      if typ == 'pal' then
        theme = mod.meta.name
        defs = { spec = mod.generate_spec(mod.palette), palette = mod.palette }
      else
        theme = vim.g.colors_name
        local pal = env.require('github-theme.palette.' .. theme)
        local spec = pal.generate_spec(pal.palette)
        pal.palette.meta, spec.palette = pal.meta, pal.palette
        defs = mod.get(spec, require('github-theme.config').options, { enable = true })
      end

      local nodes, parser = {}, ts.get_parser(buf)
      get_nodes(parser:parse(false)[1]:root(), buf, typ, function(node_info)
        table.insert(nodes, node_info)
      end)

      disp_colors(buf, nodes, defs, typ, theme)
    end
  end

  if enable == false then
    for _, buf in ipairs(api.nvim_list_bufs()) do
      api.nvim_buf_clear_namespace(buf, ns, 0, -1)
    end

    pcall(api.nvim_del_augroup_by_name, augroup_live_colors)
  else
    for _, buf in ipairs(api.nvim_list_bufs()) do
      refresh({ buf = buf })
    end

    api.nvim_create_autocmd({ 'ColorScheme', 'BufNew', 'BufWritePost' }, {
      group = api.nvim_create_augroup(augroup_live_colors, { clear = true }),
      pattern = '*.lua',
      desc = 'Refresh live-displayed colors',
      nested = true,
      callback = vim.schedule_wrap(refresh),
    })
  end
end

return M
