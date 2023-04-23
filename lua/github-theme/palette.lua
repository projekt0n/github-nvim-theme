local collect = require('github-theme.lib.collect')
local config = require('github-theme.config')
local util = require('github-theme.util')

local M = {}

M.themes = {
  'github_dark',
  'github_dark_dimmed',
  'github_dark_colorblind',
  'github_dark_high_contrast',
  'github_dark_tritanopia',
  'github_light',
  'github_light_colorblind',
  'github_light_high_contrast',
  'github_light_tritanopia',
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
    local raw = valid and require('github-theme.palette.' .. name)
      or require('github-theme.palette.' .. config.theme)
    local palette = raw.palette
    palette = apply_ovr('all', palette)
    palette = apply_ovr(name, palette)
    palette.meta = raw.meta
    palette.generate_spec = raw.generate_spec

    return palette
  else
    local result = {}
    for _, mod in ipairs(M.themes) do
      local raw = require('github-theme.palette.' .. mod)
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
