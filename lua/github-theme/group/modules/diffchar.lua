-- https://github.com/rickhowe/diffchar.vim

local M = {}

---@param spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(spec, _config, _opts)
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    DiffAdd = { link = 'diffAdded' },
    DiffChange = { link = 'diffChanged' },
    DiffDelete = { link = 'diffRemoved' },
    DiffText = { fg = spec.fg1, bg = spec.bg2 },
  }
end

return M
