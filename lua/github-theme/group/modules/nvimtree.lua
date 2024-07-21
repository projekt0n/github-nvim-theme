-- https://github.com/kyazdani42/nvim-tree.lua

local M = {}

---@param spec GhTheme.Spec
---@param config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(spec, config, _opts)
  local hide_eof = config.hide_end_of_buffer
  local dark_sb = config.darken.sidebars.enable
  local c = spec.palette

  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    NvimTreeNormal             = { link = 'NormalSB' },
    NvimTreeEndOfBuffer        = { fg = (hide_eof and dark_sb) and spec.bg0 or spec.fg0 },
    NvimTreeRootFolder         = { fg = spec.fg1, style = 'bold' },
    NvimTreeGitDirty           = { fg = spec.git.changed },
    NvimTreeGitNew             = { fg = spec.git.add },
    NvimTreeGitRenamed         = { fg = c.done.fg },
    NvimTreeGitDeleted         = { fg = spec.git.removed },
    NvimTreeGitIgnored         = { fg = spec.syntax.comment },
    NvimTreeSpecialFile        = { fg = c.yellow.base, style = 'Underline' },
    NvimTreeIndentMarker       = { fg = spec.syntax.comment },
    NvimTreeImageFile          = { fg = c.yellow.bright },
    NvimTreeSymlink            = { fg = c.magenta.base },
    NvimTreeFolderName         = { fg = spec.fg1 },
    NvimTreeOpenedFolderName   = { fg = spec.fg1, style = 'Bold' },
    NvimTreeOpenedFile         = { fg = c.blue.bright },
  }
end

return M
