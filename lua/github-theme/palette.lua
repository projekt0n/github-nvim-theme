local M = {
  themes = {
    'github_dark',
    'github_dark_colorblind',
    'github_dark_default',
    'github_dark_dimmed',
    'github_dark_high_contrast',
    'github_dark_tritanopia',
    'github_light',
    'github_light_colorblind',
    'github_light_default',
    'github_light_high_contrast',
    'github_light_tritanopia',
  },
}

local function override(color, ovr)
  for key, value in pairs(ovr) do
    color[key] = value
  end
  return color
end

---@param theme? string
---@return table palette
function M.load(theme)
  local ovr = require('github-theme.override').palettes
  local result = {}

  ---@diagnostic disable-next-line: redefined-local
  for _, theme in ipairs(theme and { theme } or M.themes) do
    local raw = require('github-theme.palette.' .. theme)
    local palette = raw.palette
    palette = override(palette, ovr.all or {})
    palette = override(palette, ovr[theme] or {})
    palette.meta = raw.meta
    palette.generate_spec = raw.generate_spec
    result[theme] = palette
  end

  return theme and result[theme] or result
end

return M
