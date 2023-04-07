local collect = require('github-theme.lib.collect')

local M = { has_options = true }

local defaults = {
  theme_style = 'dark',
  hide_end_of_buffer = true,
  hide_inactive_statusline = true,
  comment_style = 'italic',
  function_style = 'NONE',
  keyword_style = 'Italic',
  msg_area_style = 'NONE',
  variable_style = 'NONE',
  transparent = false,
  dark_float = false,
  dark_sidebar = true,
  sidebars = {},
  colors = {},
  overrides = function()
    return {}
  end,
  dev = false,
}

M.options = collect.deep_copy(defaults)

function M.set_options(opts)
  opts = opts or {}
  M.options = collect.deep_extend(M.options, opts)
  M.has_options = true
end

function M.reset()
  M.options = collect.deep_copy(defaults)
end

return M
