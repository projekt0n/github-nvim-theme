local palette = require('github-theme.palette')
local util = require('github-theme.util')

---Generate github theme for kitty terminal.
---@param cfg gt.ConfigSchema
return function(cfg)
  local colors = palette.get_palette(cfg.theme_style)

  local kitty = util.template(
    [[
# github colors for Kitty

background ${bg}
foreground ${term_fg}
selection_background ${bg_visual_selection}
selection_foreground ${term_fg}
url_color ${term_fg}
cursor ${cursor}

# Tabs
active_tab_background ${blue}
active_tab_foreground ${bg2}
inactive_tab_background ${term_fg}
inactive_tab_foreground ${bg2}

# Windows Border
active_border_color ${bg_visual}
inactive_border_color ${bg_visual}

# normal
color0 ${black}
color1 ${red}
color2 ${green}
color3 ${yellow}
color4 ${blue}
color5 ${magenta}
color6 ${cyan}
color7 ${fg_dark}

# bright
color8 ${fg_dark}
color9 ${bright_red}
color10 ${bright_green}
color11 ${bright_yellow}
color12 ${bright_blue}
color13 ${bright_magenta}
color14 ${bright_cyan}
color15 ${term_fg}

# extended colors
color16 ${bright_yellow}
color17 ${bright_red}
]],
    colors
  )
  return kitty
end
