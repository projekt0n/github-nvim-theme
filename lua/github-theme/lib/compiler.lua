---@diagnostic disable: need-check-nil

local config = require('github-theme.config')
local util = require('github-theme.util')
local parse_styles = require('github-theme.lib.highlight').parse_style
local fmt = string.format

local M = {}

local function inspect(t)
  local list = {}
  for k, v in pairs(t) do
    local q = type(v) == 'string' and [["]] or ''
    table.insert(list, fmt([[%s = %s%s%s]], k, q, v, q))
  end

  table.sort(list)
  return fmt([[{ %s }]], table.concat(list, ', '))
end

local function should_link(link)
  return link and link ~= ''
end

function M.compile(opts)
  opts = opts or {}
  local theme = config.theme
  local spec = require('github-theme.spec').load(theme)
  local groups = require('github-theme.group').from(spec)
  local background = spec.palette.meta.light and 'light' or 'dark'

  local lines = {
    fmt(
      [[
return string.dump(function()
local h = vim.api.nvim_set_hl
if vim.g.colors_name then vim.cmd("hi clear") end
vim.o.termguicolors = true
vim.g.colors_name = "%s"
vim.o.background = "%s"
    ]],
      theme,
      background
    ),
  }

  if config.options.terminal_colors then
    local terminal = require('github-theme.group.terminal').get(spec)
    for k, v in pairs(terminal) do
      table.insert(lines, fmt([[vim.g.%s = "%s"]], k, v))
    end
  end

  for name, values in pairs(groups) do
    if should_link(values.link) then
      table.insert(lines, fmt([[h(0, "%s", { link = "%s" })]], name, values.link))
    else
      local op = parse_styles(values.style)
      op.bg = values.bg
      op.fg = values.fg
      op.sp = values.sp
      op.blend = values.blend
      if op.nocombine == nil then
        op.nocombine = values.nocombine
      end
      table.insert(lines, fmt([[h(0, "%s", %s)]], name, inspect(op)))
    end
  end

  table.insert(lines, 'end)')

  opts.name = theme
  local output_path, output_file = config.get_compiled_info(opts)
  util.ensure_dir(output_path)

  local file
  if vim.g.github_theme_debug then
    file = io.open(output_file .. '.lua', 'wb')
    file:write(table.concat(lines, '\n'))
    file:close()
  end

  file = io.open(output_file, 'wb')

  local f = loadstring(table.concat(lines, '\n'), '=')
  if not f then
    local tmpfile = util.join_paths(util.get_tmp_dir(), 'github_theme_error.lua')
    require('github-theme.lib.log').error(
      fmt(
        [[There is an error in your github-theme config.
You can open '%s' for debugging.

If you think this is a bug, kindly open an issue and attach '%s' file.
Bellow is the error message:
]],
        tmpfile,
        tmpfile
      )
    )
    local efile = io.open(tmpfile, 'wb')
    efile:write(table.concat(lines, '\n'))
    efile:close()
    dofile(tmpfile)
  end

  file:write(f())
  file:close()
end

return M
