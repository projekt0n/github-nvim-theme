local palette = require('github-theme.palette')
local util = require('github-theme.util')

---Generate github theme for Alacritty terminal.
---@param cfg gt.ConfigSchema
return function(cfg)
  local colors = palette.get_palette(cfg.theme_style)

  local alacritty_colors = {}
  for k, v in pairs(colors) do
    if type(v) == 'string' then
      alacritty_colors[k] = v:gsub('^#', '0x')
    end
  end

  local alacritty = util.template(
    [[
# github Alacritty Colors
colors:
  # Default colors
  primary:
    background: '${bg}'
    foreground: '${fg_term}'

  # Normal colors
  normal:
    black:   '${black}'
    red:     '${red}'
    green:   '${green}'
    yellow:  '${yellow}'
    blue:    '${blue}'
    magenta: '${magenta}'
    cyan:    '${cyan}'
    white:   '${fg_term}'

  # Bright colors
  bright:
    black:   '${bright_black}'
    red:     '${bright_red}'
    green:   '${bright_green}'
    yellow:  '${bright_yellow}'
    blue:    '${bright_blue}'
    magenta: '${bright_magenta}'
    cyan:    '${cyan}'
    white:   '${fg_term}'

  indexed_colors:
    - { index: 16, color: '${orange}' }
    - { index: 17, color: '${bright_red}' }
]],
    alacritty_colors
  )

  return alacritty
end
