-- https://github.com/ibhagwan/fzf-lua

local M = {}

function M.get(spec, config, opts)
  -- stylua: ignore
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
