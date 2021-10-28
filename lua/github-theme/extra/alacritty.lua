local util = require("github-theme.util")
local config_module = require("github-theme.config")

local M = {}

function M.alacritty(config)
  config = config or config_module.config
  local colors = require("github-theme.colors").setup(config)

  local alacritty_colors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then alacritty_colors[k] = v:gsub("^#", "0x") end
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
    black:   '${bright_black}'
    red:     '${bright_red}'
    green:   '${bright_green}'
    yellow:  '${bright_yellow}'
    blue:    '${bright_blue}'
    magenta: '${bright_magenta}'
    cyan:    '${cyan}'
    white:   '${term_fg}'

  indexed_colors:
    - { index: 16, color: '${orange}' }
    - { index: 17, color: '${bright_red}' }
]], alacritty_colors)

  return alacritty
end

return M
