local palette = require('github-theme.palette')
local util = require('github-theme.util')

---@class gt.Colors
local colors = {}

---Setup Colors
---@param cfg gt.ConfigSchema
---@return gt.ColorPalette
colors.setup = function(cfg)
  local c = palette.get_palette(cfg.theme_style)

  -- useful for 'util.darken()' and 'util.lighten()'
  util.bg = c.bg
  util.fg = c.fg

  --
  -- NOTE: These colors are also configurable
  --

  -- EndOfBuffer
  c.sidebar_eob = cfg.dark_sidebar and c.bg2 or c.bg
  c.sidebar_eob = cfg.hide_end_of_buffer and c.sidebar_eob or c.fg_gutter
  c.eob = cfg.hide_end_of_buffer and c.bg or c.fg_gutter

  -- Sidebar and Floats
  c.bg_sidebar = cfg.dark_sidebar and c.bg2 or c.bg
  c.bg_sidebar = cfg.transparent and c.none or c.bg_sidebar
  c.bg_float = cfg.dark_float and c.bg2 or c.bg

  c = util.color_overrides(c, cfg.colors)
  return c
end

return colors
