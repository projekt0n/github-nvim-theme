-- https://github.com/nvim-telescope/telescope.nvim

local M = {}

---@param spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(spec, _config, _opts)
  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    TelescopeSelectionCaret = { fg = spec.palette.accent.fg },
    TelescopeSelection      = { link = 'CursorLine' },
    TelescopeMatching       = { link = 'Search' },
  }
end

return M
