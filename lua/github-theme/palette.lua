---@class gt.Palette
local palette = {}

---@param theme_style gt.ThemeStyle
---@return gt.ColorPalette
palette.get_palette = function(theme_style)
  ---@type gt.ColorPalette
  local p

  p = require('github-theme.palette.' .. theme_style)
  p.none = 'NONE'
  p.dev_icons = {
    blue = '#519aba',
    green = '#8dc149',
    yellow = '#cbcb41',
    orange = '#e37933',
    red = '#cc3e44',
    purple = '#a074c4',
    pink = '#f55385',
    gray = '#4d5a5e',
  }
  return p
end

return palette
