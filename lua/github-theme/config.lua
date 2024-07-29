local collect = require('github-theme.lib.collect')
local util = require('github-theme.util')
local M = { theme = 'github_dark', has_options = false }

---@alias GhTheme.Config.Options.Filetype string A neovim `filetype`.

-- TODO: improve type of `specs` and `palettes`
---@class (exact) GhTheme.Config
---@field options? GhTheme.Config.Options
---@field palettes? table<GhTheme.Theme|"all", table>|false
---@field specs? table<GhTheme.Theme|"all", table>|false
---@field groups? table<GhTheme.Theme|"all", table<string, GhTheme.HighlightGroup|false>>|false

---@class (exact) GhTheme.Config.Module
---@field enable? boolean whether to set plugin-specific highlights for this module/plugin

---@class (exact) GhTheme.Config.Options
---@field compile_file_suffix? string
---@field compile_path? string
---@field hide_end_of_buffer? boolean
---@field hide_nc_statusline? boolean
---@field transparent? boolean
---@field terminal_colors? boolean
---@field dim_inactive? boolean
---@field module_default? boolean
---@field styles? GhTheme.Config.Options.Styles
---@field inverse? GhTheme.Config.Options.Inverse
---@field darken? GhTheme.Config.Options.Darken
---@field modules? GhTheme.Config.Options.Modules
local defaults = {
  compile_file_suffix = '_compiled',
  compile_path = util.join_paths(util.cache_home, 'github-theme'),
  hide_end_of_buffer = true,
  hide_nc_statusline = true,
  transparent = false,
  terminal_colors = true,
  dim_inactive = false,
  module_default = true,

  ---A table of syntax items/groups and their corresponding styles.
  ---@class (exact) GhTheme.Config.Options.Styles
  ---@field comments? GhTheme.HighlightGroup.Style
  ---@field functions? GhTheme.HighlightGroup.Style
  ---@field keywords? GhTheme.HighlightGroup.Style
  ---@field variables? GhTheme.HighlightGroup.Style
  ---@field conditionals? GhTheme.HighlightGroup.Style
  ---@field constants? GhTheme.HighlightGroup.Style
  ---@field numbers? GhTheme.HighlightGroup.Style
  ---@field operators? GhTheme.HighlightGroup.Style
  ---@field strings? GhTheme.HighlightGroup.Style
  ---@field types? GhTheme.HighlightGroup.Style
  styles = {
    comments = 'NONE',
    functions = 'NONE',
    keywords = 'NONE',
    variables = 'NONE',
    conditionals = 'NONE',
    constants = 'NONE',
    numbers = 'NONE',
    operators = 'NONE',
    strings = 'NONE',
    types = 'NONE',
  },

  ---The `inverse` table contains a list of highlight types. If a highlight type is
  ---enabled, the `fg` and `bg` colors will be inversed/reversed (swapped).
  ---
  ---For example, if `search` is enabled, then the foreground and background colors of
  ---highlighted search terms will be swapped.
  ---@class (exact) GhTheme.Config.Options.Inverse
  ---@field match_paren? boolean invert highlight of matching parenthesis (`:help matchparen`)
  ---@field visual? boolean invert highlight of visual mode selection
  ---@field search? boolean invert highlight of current search term
  inverse = {
    match_paren = false,
    visual = false,
    search = false,
  },

  ---@class (exact) GhTheme.Config.Options.Darken
  ---@field floats? boolean whether to darken the `bg` of floating windows (default `true`)
  ---@field sidebars? GhTheme.Config.Options.Darken.Sidebars
  darken = {
    floats = true,

    ---@class (exact) GhTheme.Config.Options.Darken.Sidebars
    ---@field enable? boolean whether to darken the `bg` of sidebars (i.e. sidebar windows) (default `true`)
    ---@field list? (GhTheme.Config.Options.Filetype|"terminal")[] list of sidebars whose `bg` will be darkened
    sidebars = {
      enable = true,
      list = {},
    },
  },

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
  modules = {

    ---@class (exact) GhTheme.Config.Module.Coc: GhTheme.Config.Module
    ---@field enable? boolean
    ---@field background? boolean whether to set background color of virtual text
    coc = {
      background = true,
    },

    ---@class (exact) GhTheme.Config.Module.Diagnostic: GhTheme.Config.Module
    ---@field enable? boolean
    ---@field background? boolean whether to set background color of virtual text
    diagnostic = {
      -- This is linked to so much that is needs to be enabled. This is here primarily for
      -- the extra options that can be added with modules.
      enable = true,
      background = false,
    },

    ---@class (exact) GhTheme.Config.Module.NativeLSP: GhTheme.Config.Module
    ---@field enable? boolean
    ---@field background? boolean whether to set background color of virtual text
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
