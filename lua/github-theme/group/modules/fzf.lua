-- https://github.com/ibhagwan/fzf-lua

local M = {}

---@param _spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(_spec, _config, _opts)
  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    FzfLuaNormal            = { link = 'Normal' },
    FzfLuaBorder            = { link = 'Normal' },
    FzfLuaCursor            = { link = 'Cursor' },
    FzfLuaCursorLine        = { link = 'CursorLine' },
    FzfLuaCursorLineNr      = { link = 'CursorLineNr' },
    FzfLuaSearch            = { link = 'IncSearch' },
    FzfLuaTitle             = { link = 'Title' },
    FzfLuaScrollBorderEmpty = { link = 'FzfLuaBorder' },
    FzfLuaScrollBorderFull  = { link = 'FzfLuaBorder' },
    FzfLuaScrollFloatEmpty  = { link = 'PmenuSbar' },
    FzfLuaScrollFloatFull   = { link = 'PmenuThumb' },
    FzfLuaHelpNormal        = { link = 'FzfLuaNormal' },
    FzfLuaHelpBorder        = { link = 'FzfLuaBorder' },
  }
end

return M
