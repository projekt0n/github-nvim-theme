local config = require('github-theme.config')
local util = require('github-theme.util')

---@class gt.Colors
local M = {}

---Setup Colors
---@return gt.ColorPalette
M.setup = function()
  local c = require('github-theme.palette.' .. config.theme)()
  c.none = 'NONE'

  -- useful for 'util.darken()' and 'util.lighten()'
  util.bg = c.bg
  util.fg = c.fg

  --
  -- NOTE: These colors are also configurable
  --

  -- EndOfBuffer
  c.sidebar_eob = config.options.dark_sidebar and c.bg2 or c.bg
  c.sidebar_eob = config.options.hide_end_of_buffer and c.sidebar_eob or c.fg_gutter
  c.eob = config.options.hide_end_of_buffer and c.bg or c.fg_gutter

  -- Sidebar and Floats
  c.bg_sidebar = config.options.dark_sidebar and c.bg2 or c.bg
  c.bg_sidebar = config.options.transparent and c.none or c.bg_sidebar
  c.bg_float = config.options.dark_float and c.bg2 or c.bg

  c = util.color_overrides(c, config.options.colors)
  return c
end

return M
