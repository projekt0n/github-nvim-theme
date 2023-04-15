local collect = require('github-theme.lib.collect')
local config = require('github-theme.config')
local util = require('github-theme.util')

local M = {}

---Setup Colors
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
  c.sidebar_eob = config.options.darken.sidebars.enable and c.bg2 or c.bg
  c.sidebar_eob = config.options.hide_end_of_buffer and c.sidebar_eob or c.fg_gutter
  c.eob = config.options.hide_end_of_buffer and c.bg or c.fg_gutter

  -- Sidebar and Floats
  c.bg_sidebar = config.options.darken.sidebars.enable and c.bg2 or c.bg
  c.bg_sidebar = config.options.transparent and c.none or c.bg_sidebar
  c.bg_float = config.options.darken.floats and c.bg2 or c.bg

  c = util.color_overrides(c, config.options.colors)
  return c
end

-- TODO: Remove assignment after migration has been DONE
M.themes = {
  ['github_dark'] = 'g_dark',
  ['github_dark_colorblind'] = 'g_dark_colorblind',
  ['github_dark_high_contrast'] = 'g_dark_high_contrast',
  ['github_dark_tritanopia'] = 'g_dark_tritanopia',
  ['github_light'] = 'g_light',
  ['github_light_colorblind'] = 'g_light_colorblind',
  ['github_light_high_contrast'] = 'g_light_high_contrast',
  ['github_light_tritanopia'] = 'g_light_tritanopia',
}

local function override(color, ovr)
  for key, value in pairs(ovr) do
    color[key] = value
  end
  return color
end

function M.load(name)
  local ovr = require('github-theme.override').palettes

  local function apply_ovr(key, palette)
    return ovr[key] and override(palette, ovr[key]) or palette
  end

  if name then
    local valid = collect.contains(M.themes, name)
    local raw = valid and require('github-theme.palette.' .. M.themes[name])
      or require('github-theme.palette.' .. M.themes[config.theme])
    local palette = raw.palette
    palette = apply_ovr('all', palette)
    palette = apply_ovr(name, palette)
    palette.meta = raw.meta
    palette.generate_spec = raw.generate_spec
    return palette
  else
    local result = {}
    for _, mod in ipairs(M.themes) do
      local raw = require('github-theme.palette.' .. M.themes[mod])
      local palette = raw.palette
      palette = apply_ovr('all', palette)
      palette = apply_ovr(mod, palette)
      palette.meta = raw.meta
      palette.generate_spec = raw.generate_spec
      result[mod] = palette
    end
    return result
  end
end

return M
