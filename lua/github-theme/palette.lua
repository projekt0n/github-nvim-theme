---@class gt.Palette
local palette = {}

---@param theme_style gt.ThemeStyle
---@return gt.ColorPalette
palette.get_palette = function(theme_style)
  ---@type gt.ColorPalette
  local p

  p = require('github-theme.palette.' .. theme_style)()
  p.none = 'NONE'
  return p
end

return palette
