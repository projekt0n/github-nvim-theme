local collect = require('github-theme.lib.collect')
local util = require('github-theme.util')
local M = { theme = 'github_dark', has_options = false }

-- TODO: improve type of `specs` and `palettes`
---@class (exact) GhTheme.Config
---@field options? GhTheme.Config.Options
---@field palettes? table
---@field specs? table
---@field groups? table<GhTheme.Theme|"all", table<string, GhTheme.HighlightGroup>>

---@class (exact) GhTheme.Config.Module
---@field enable? boolean whether to set plugin-specific highlights for this module/plugin

---@class (exact) GhTheme.Config.Module.Coc: GhTheme.Config.Module
---@field background? boolean whether to set background color of virtual text

---@class (exact) GhTheme.Config.Module.Diagnostic: GhTheme.Config.Module
---@field background? boolean whether to set background color of virtual text

---@class (exact) GhTheme.Config.Module.NativeLSP: GhTheme.Config.Module
---@field background? boolean whether to set background color of virtual text

---Config for external modules/plugins.
---@class (exact) GhTheme.Config.Options.Modules
---@field cmp? boolean|GhTheme.Config.Module
---@field coc? boolean|GhTheme.Config.Module.Coc
---@field coc_explorer? boolean|GhTheme.Config.Module
---@field dapui? boolean|GhTheme.Config.Module
---@field diffchar? boolean|GhTheme.Config.Module
---@field dashboard? boolean|GhTheme.Config.Module
---@field diagnostic? boolean|GhTheme.Config.Module.Diagnostic
---@field fidget? boolean|GhTheme.Config.Module
---@field fzf? boolean|GhTheme.Config.Module
---@field gitgutter? boolean|GhTheme.Config.Module
---@field gitsigns? boolean|GhTheme.Config.Module
---@field indent_blankline? boolean|GhTheme.Config.Module
---@field lsp_semantic_tokens? boolean|GhTheme.Config.Module
---@field lsp_trouble? boolean|GhTheme.Config.Module
---@field mini? boolean|GhTheme.Config.Module
---@field native_lsp? boolean|GhTheme.Config.Module.NativeLSP
---@field neogit? boolean|GhTheme.Config.Module
---@field neotree? boolean|GhTheme.Config.Module
---@field notify? boolean|GhTheme.Config.Module
---@field nvimtree? boolean|GhTheme.Config.Module
---@field telescope? boolean|GhTheme.Config.Module
---@field treesitter? boolean|GhTheme.Config.Module
---@field treesitter_context? boolean|GhTheme.Config.Module
---@field whichkey? boolean|GhTheme.Config.Module

---@class GhTheme.Config.Options
local defaults = {
  compile_file_suffix = '_compiled',
  compile_path = util.join_paths(util.cache_home, 'github-theme'),
  hide_end_of_buffer = true,
  hide_nc_statusline = true,
  transparent = false,
  terminal_colors = true,
  dim_inactive = false,
  module_default = true,
  styles = {
    ---@type GhTheme.HighlightGroup.Style
    comments = 'NONE',

    ---@type GhTheme.HighlightGroup.Style
    functions = 'NONE',

    ---@type GhTheme.HighlightGroup.Style
    keywords = 'NONE',

    ---@type GhTheme.HighlightGroup.Style
    variables = 'NONE',

    ---@type GhTheme.HighlightGroup.Style
    conditionals = 'NONE',

    ---@type GhTheme.HighlightGroup.Style
    constants = 'NONE',

    ---@type GhTheme.HighlightGroup.Style
    numbers = 'NONE',

    ---@type GhTheme.HighlightGroup.Style
    operators = 'NONE',

    ---@type GhTheme.HighlightGroup.Style
    strings = 'NONE',

    ---@type GhTheme.HighlightGroup.Style
    types = 'NONE',
  },
  inverse = {
    match_paren = false,
    visual = false,
    search = false,
  },
  darken = {
    floats = true,
    sidebars = {
      enable = true,
      ---List of (filetype or `'terminal'`) whose bg will be darkened.
      list = {},
    },
  },

  ---@type GhTheme.Config.Options.Modules
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

-- The following is done to disallow the addition of any more fields.

---@type GhTheme.Config.Options
---@diagnostic disable-next-line: redefined-local
local defaults = defaults

M.options = collect.deep_copy(defaults)

M.module_names = {
  'cmp',
  'coc',
  'coc_explorer',
  'dapui',
  'diffchar',
  'dashboard',
  'diagnostic',
  'fidget',
  'fzf',
  'gitgutter',
  'gitsigns',
  'indent_blankline',
  'lsp_semantic_tokens',
  'lsp_trouble',
  'mini',
  'native_lsp',
  'neogit',
  'neotree',
  'notify',
  'nvimtree',
  'telescope',
  'treesitter',
  'treesitter_context',
  'whichkey',
}

---@param name GhTheme.Theme
function M.set_theme(name)
  M.theme = name
end

---@param opts GhTheme.Config.Options
function M.set_options(opts)
  opts = opts or {}
  M.options = collect.deep_extend(M.options, opts)
  M.has_options = true
end

function M.reset()
  M.options = collect.deep_copy(defaults)
end

function M.get_compiled_info(opts)
  opts = opts or {}
  local output_path = opts.output_path or M.options.compile_path
  local file_suffix = opts.file_suffix or M.options.compile_file_suffix
  return output_path, util.join_paths(output_path, (opts.theme or M.theme) .. file_suffix)
end

function M.hash()
  local hash = require('github-theme.lib.hash')(M.options)
  return hash or 0
end

return M
