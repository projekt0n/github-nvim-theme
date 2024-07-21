-- https://github.com/neoclide/coc.nvim

local M = {}

---@param spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param opts GhTheme.Config.Module.Coc
function M.get(spec, _config, opts)
  local syn = spec.syntax

  ---@type table<string, GhTheme.HighlightGroup>
  return {
    CocInlayHint = { fg = syn.comment, bg = opts.background and spec.bg2 or 'NONE' },
  }
end

return M
