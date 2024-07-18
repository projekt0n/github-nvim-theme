local M = {}

---@enum GhTheme.Theme
M.themes = {
  github_dark = 'github_dark',
  github_dark_colorblind = 'github_dark_colorblind',
  github_dark_default = 'github_dark_default',
  github_dark_dimmed = 'github_dark_dimmed',
  github_dark_high_contrast = 'github_dark_high_contrast',
  github_dark_tritanopia = 'github_dark_tritanopia',
  github_light = 'github_light',
  github_light_colorblind = 'github_light_colorblind',
  github_light_default = 'github_light_default',
  github_light_high_contrast = 'github_light_high_contrast',
  github_light_tritanopia = 'github_light_tritanopia',
}

---@param theme GhTheme.Theme
local function get_palette(theme)
  local ovr = require('github-theme.override').palettes
  local raw = require('github-theme.palette.' .. theme)
  local pal = raw.palette
  if ovr.all then
    pal = vim.tbl_deep_extend('force', pal, ovr.all)
  end
  if ovr[theme] then
    pal = vim.tbl_deep_extend('force', pal, ovr[theme])
  end
  pal.meta, pal.generate_spec = raw.meta, raw.generate_spec
  return pal
end

---Returns the palette for the given `theme`, or all themes (i.e. a map from
---theme name to palette) if `theme` is `nil`.
---@param theme? GhTheme.Theme
function M.load(theme)
  if theme ~= nil then
    if not M.themes[theme] then
      error('invalid theme provided: ' .. theme)
    end

    return get_palette(theme)
  else
    local all = {}

    ---@diagnostic disable-next-line: redefined-local
    for theme in pairs(M.themes) do
      all[theme] = get_palette(theme)
    end

    return all
  end
end

return M
