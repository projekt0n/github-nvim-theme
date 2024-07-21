-- https://github.com/j-hui/fidget.nvim

local M = {}

---@param _spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(_spec, _config, _opts)
  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    FidgetTitle = { link = 'Title' },
    FidgetTask  = { link = 'LineNr' },
  }
end

return M
