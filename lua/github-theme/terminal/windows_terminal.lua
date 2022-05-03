local palette = require('github-theme.palette')
local util = require('github-theme.util')

---Generate github theme for windows terminal.
---@param cfg gt.ConfigSchema
return function(cfg)
  local colors = palette.get_palette(cfg.theme_style)

  local name = 'Github ' .. cfg.theme_style:lower():gsub('^%l', string.upper)
  local windows_terminal = util.template([[
{
  "name": "]] .. name .. [[",
  "background": "${bg}",
  "foreground": "${fg_term}",
  "cursorColor": "${cursor}",
  "selectionBackground": "${bg_visual_selection}",
  "black": "${black}",
  "brightBlack": "${bright_black}",
  "white": "${white}",
  "brightWhite": "${bright_white}",
  "red": "${red}",
  "brightRed": "${bright_red}",
  "green": "${green}",
  "brightGreen": "${bright_green}",
  "yellow": "${yellow}",
  "brightYellow": "${bright_yellow}",
  "blue": "${blue}",
  "brightBlue": "${bright_blue}",
  "purple": "${magenta}",
  "brightPurple": "${bright_magenta}",
  "cyan": "${cyan}",
  "brightCyan": "${bright_cyan}"
}]], colors)
  return windows_terminal
end
