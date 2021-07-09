local util = require("github-theme.util")
local configModule = require("github-theme.config")

local M = {}

function Hex2rgb(hex)
    hex = hex:gsub("#","")
    return table.concat({tonumber("0x"..hex:sub(1,2)), tonumber("0x"..hex:sub(3,4)), tonumber("0x"..hex:sub(5,6))}, ',')
end

function M.konsole(config)
  config = config or configModule.config
  config.transform_colors = true
  local colors = require("github-theme.colors").setup(config)

  local konsoleColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then konsoleColors[k] = Hex2rgb(v) end
  end

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
Color=${brightRed}

[Color2]
Color=${green}

[Color2Faint]
Color=${green}

[Color2Intense]
Color=${brightGreen}

[Color3]
Color=${yellow}

[Color3Faint]
Color=${yellow}

[Color3Intense]
Color=${brightYellow}

[Color4]
Color=${blue}

[Color4Faint]
Color=${blue}

[Color4Intense]
Color=${brightBlue}

[Color5]
Color=${magenta}

[Color5Faint]
Color=${magenta}

[Color5Intense]
Color=${brightMagenta}

[Color6]
Color=${cyan}

[Color6Faint]
Color=${cyan}

[Color6Intense]
Color=${brightCyan}

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

[General]
Description=Breeze
Opacity=1
Wallpaper=
]], konsoleColors)

  return konsole
end

return M
