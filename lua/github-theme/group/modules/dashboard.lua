-- https://github.com/glepnir/dashboard-nvim

local M = {}

---@param spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(spec, _config, _opts)
  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    DashboardShortCut = { link = 'Identifier' },
    DashboardHeader   = { link = 'Title' },
    DashboardCenter   = { link = 'String' },
    DashboardFooter   = { fg = spec.syntax.const, style = 'italic' },
  }
end

return M
