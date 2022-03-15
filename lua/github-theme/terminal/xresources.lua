local palette = require('github-theme.palette')
local util = require('github-theme.util')

---Generate github theme for Xresources.
---@param cfg gt.ConfigSchema
return function(cfg)
  local colors = palette.get_palette(cfg.theme_style)

  local xresources = util.template(
    [[

*.foreground:   ${fg_term}
#ifdef background_opacity
*.background:   [background_opacity]${bg}
#else
*.background:   ${bg}
#endif
*.cursorColor:  ${cursor}

*.color0:       ${black}
*.color1:       ${red}
*.color2:       ${green}
*.color3:       ${yellow}
*.color4:       ${blue}
*.color5:       ${magenta}
*.color6:       ${cyan}
*.color7:       ${white}

*.color8:       ${bright_black}
*.color9:       ${bright_red}
*.color10:      ${bright_green}
*.color11:      ${bright_yellow}
*.color12:      ${bright_blue}
*.color13:      ${bright_magenta}
*.color14:      ${bright_cyan}
*.color15:      ${bright_white}
]],
    colors
  )
  return xresources
end
