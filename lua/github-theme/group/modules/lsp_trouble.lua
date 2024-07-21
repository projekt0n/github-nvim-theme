-- https://github.com/simrat39/lsp-trouble.nvim

local M = {}

---@param spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(spec, _config, _opts)
  local c = spec.palette

  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    LspTroubleText   = { fg = spec.fg2 },
    LspTroubleCount  = { fg = c.magenta.base, bg = spec.fg3 },
    LspTroubleNormal = { fg = spec.fg3, bg = spec.bg0 },
  }
end

return M
