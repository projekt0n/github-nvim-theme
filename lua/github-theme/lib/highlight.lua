local util = require('github-theme.util')
local fmt = string.format
local cmd = util.is_nvim and vim.cmd or vim.command
local M = {}

---@param style string|nil
---@return table
function M.parse_style(style)
  if not style or style == 'NONE' then
    return {}
  end

  local result = {}
  for token in string.gmatch(style, '([^,]+)') do
    result[token:lower()] = true
  end

  return result
end

local function should_link(link)
  return link and link ~= ''
end

local function viml_hl(highlights)
  local highlight_cmds = {}
  for group, opts in pairs(highlights) do
    if should_link(opts.link) then
      table.insert(highlight_cmds, fmt('highlight! link %s %s', group, opts.link))
    else
      table.insert(
        highlight_cmds,
        fmt(
          'highlight %s guifg=%s guibg=%s gui=%s guisp=%s',
          group,
          opts.fg or 'NONE',
          opts.bg or 'NONE',
          opts.style or 'NONE',
          opts.sp or 'NONE'
        )
      )
    end
  end
  cmd(table.concat(highlight_cmds, '\n'))
end

local function nvim_hl(highlights)
  for group, opts in pairs(highlights) do
    if should_link(opts.link) then
      vim.api.nvim_set_hl(0, group, {
        link = opts.link,
      })
    else
      local values = M.parse_style(opts.style)
      values.bg = opts.bg
      values.fg = opts.fg
      values.sp = opts.sp
      vim.api.nvim_set_hl(0, group, values)
    end
  end
end

if util.use_nvim_api then
  M.highlight = nvim_hl
else
  M.highlight = viml_hl
end

return M
