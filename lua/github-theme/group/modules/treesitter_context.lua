local M = {}

---@param spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param _opts table
function M.get(spec, _config, _opts)
  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    ['TreesitterContext']      = { bg = spec.palette.accent.subtle },
  }
end

return M
