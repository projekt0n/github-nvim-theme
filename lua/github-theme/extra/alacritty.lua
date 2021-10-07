local util = require("github-theme.util")
local configModule = require("github-theme.config")

local M = {}

function M.alacritty(config)
  config = config or configModule.config
  config.transform_colors = true
  local colors = require("github-theme.colors").setup(config)

  local alacrittyColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then alacrittyColors[k] = v:gsub("^#", "0x") end
  end

  local alacritty = util.template([[
# github Alacritty Colors
colors:
  # Default colors
  primary:
    background: '${bg}'
    foreground: '${term_fg}'

  # Normal colors
  normal:
    black:   '${black}'
    red:     '${red}'
    green:   '${green}'
    yellow:  '${yellow}'
    blue:    '${blue}'
    magenta: '${magenta}'
    cyan:    '${cyan}'
    white:   '${term_fg}'

  # Bright colors
  bright:
    black:   '${brightBlack}'
    red:     '${brightRed}'
    green:   '${brightGreen}'
    yellow:  '${brightYellow}'
    blue:    '${brightBlue}'
    magenta: '${brightMagenta}'
    cyan:    '${cyan}'
    white:   '${term_fg}'

  indexed_colors:
    - { index: 16, color: '${orange}' }
    - { index: 17, color: '${brightRed}' }
]], alacrittyColors)

  return alacritty
end

return M
