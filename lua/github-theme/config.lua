local collect = require('github-theme.lib.collect')
local util = require('github-theme.util')

local M = { theme = 'github_dark', has_options = true }

local defaults = {
  transparent = false,
  hide_end_of_buffer = true,
  hide_nc_statusline = true,
  module_default = true,
  styles = {
    comments = 'italic',
    functions = 'NONE',
    keywords = 'italic',
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
  modules = {
    diagnostic = {
      -- This is linked to so much that is needs to be enabled. This is here primarily
      -- for the extra options that can be added with modules
      enable = true,
      background = false,
    },
    native_lsp = {
      enable = util.is_nvim,
      background = true,
    },
    treesitter = util.is_nvim,
    lsp_semantic_tokens = util.is_nvim,
  },

  colors = {},
  overrides = function()
    return {}
  end,
  dev = false,
}

M.options = collect.deep_copy(defaults)

M.module_names = {
  'diagnostic',
  'lsp_semantic_tokens',
  'native_lsp',
  'treesitter',
}
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
