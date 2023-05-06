local collect = require('github-theme.lib.collect')
local util = require('github-theme.util')

local M = { theme = 'github_dark', has_options = false }

local defaults = {
  compile_file_suffix = '_compiled',
  compile_path = util.join_paths(util.cache_home, 'github-theme'),
  hide_end_of_buffer = true,
  hide_nc_statusline = true,
  terminal_colors = true,
  transparent = false,
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
    coc = {
      background = true,
    },
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
}

M.options = collect.deep_copy(defaults)

M.module_names = {
  'cmp',
  'coc',
  'dashboard',
  'diagnostic',
  'gitgutter',
  'gitsigns',
  'indent_blankline',
  'lsp_semantic_tokens',
  'lsp_trouble',
  'mini',
  'native_lsp',
  'neogit',
  'notify',
  'nvimtree',
  'telescope',
  'treesitter',
  'treesitter_context',
  'whichkey',
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

function M.get_compiled_info(opts)
  local output_path = opts.output_path or M.options.compile_path
  local file_suffix = opts.file_suffix or M.options.compile_file_suffix
  local style = opts.name or M.theme
  return output_path, util.join_paths(output_path, style .. file_suffix)
end

function M.hash()
  local hash = require('github-theme.lib.hash')(M.options)
  return hash and hash or 0
end

return M
