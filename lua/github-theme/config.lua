local collect = require('github-theme.lib.collect')

local M = { theme = 'github_dark', has_options = true }

local defaults = {
  transparent = false,
  hide_end_of_buffer = true,
  hide_nc_statusline = true,
  styles = {
    comments = 'Italic',
    functions = 'NONE',
    keywords = 'Italic',
    variables = 'NONE',

    -- conditionals = 'NONE',
    -- constants = 'NONE',
    -- numbers = 'NONE',
    -- operators = 'NONE',
    -- strings = 'NONE',
    -- types = 'NONE',
  },
  darken = {
    floats = false,
    sidebars = {
      enable = true,
      list = {},
    },
  },

  colors = {},
  overrides = function()
    return {}
  end,
  dev = false,
}

M.options = collect.deep_copy(defaults)

function M.set_theme(name)
  M.theme = name
end

function M.set_options(opts)
  opts = opts or {}
  M.options = collect.deep_extend(M.options, opts)
  M.has_options = true
end

function M.reset()
  M.options = collect.deep_copy(defaults)
end

return M
