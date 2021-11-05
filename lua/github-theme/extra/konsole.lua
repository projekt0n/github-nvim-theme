local util = require("github-theme.util")
local config_module = require("github-theme.config")

local M = {}

---Convert hex color to rgb.
---@param hex string color hex.
---@return string rgb color string.
function M.hex_to_rgb(hex)
  hex = hex:gsub("#", "")
  return table.concat({
    tonumber("0x" .. hex:sub(1, 2)), tonumber("0x" .. hex:sub(3, 4)),
    tonumber("0x" .. hex:sub(5, 6))
  }, ",")
end

---Generate github theme for kitty terminal.
---@param config github-theme.Config
function M.konsole(config)
  config = config or config_module.config
  local colors = require("github-theme.colors").setup(config)

  local konsole_colors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then konsole_colors[k] = M.hex_to_rgb(v) end
  end

  local description = "Github " .. config.theme_style:lower():gsub("^%l", string.upper)

  local konsole = util.template([[
# github Konsole Colors
[Background]
Color=${bg}

[BackgroundFaint]
Color=${bg}

[BackgroundIntense]
Color=${bg}

[Color0]
Color=${black}

[Color0Faint]
Color=${black}

[Color0Intense]
Color=${fg_dark}

[Color1]
Color=${red}

[Color1Faint]
Color=${red}

[Color1Intense]
Color=${bright_red}

[Color2]
Color=${green}

[Color2Faint]
Color=${green}

[Color2Intense]
Color=${bright_green}

[Color3]
Color=${yellow}

[Color3Faint]
Color=${yellow}

[Color3Intense]
Color=${bright_yellow}

[Color4]
Color=${blue}

[Color4Faint]
Color=${blue}

[Color4Intense]
Color=${bright_blue}

[Color5]
Color=${magenta}

[Color5Faint]
Color=${magenta}

[Color5Intense]
Color=${bright_magenta}

[Color6]
Color=${cyan}

[Color6Faint]
Color=${cyan}

[Color6Intense]
Color=${bright_cyan}

[Color7]
Color=${fg_dark}

[Color7Faint]
Color=${fg_dark}

[Color7Intense]
Color=${term_fg}

[Foreground]
Color=${term_fg}

[ForegroundFaint]
Color=${term_fg}

[ForegroundIntense]
Color=${term_fg}

]] .. [[
[General]
Description=]] .. description .. [[

Opacity=1
Wallpaper=
]], konsole_colors)

  return konsole
end

return M
