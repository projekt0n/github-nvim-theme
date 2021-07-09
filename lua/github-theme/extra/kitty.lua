local util = require("github-theme.util")
local configModule = require("github-theme.config")

local M = {}

function M.kitty(config)
  config = config or configModule.config
  config.transform_colors = true
  local colors = require("github-theme.colors").setup(config)

  local kitty = util.template([[
# github colors for Kitty

background ${bg2}
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
#tab_bar_background ${black}

# normal
color0 ${black}
color1 ${red}
color2 ${green}
color3 ${yellow}
color4 ${blue}
color5 ${magenta}
color6 ${cyan}
molor7 ${fg_dark}

# bright
color8 ${fg_dark}
color9 ${brightRed}
color10 ${brightGreen}
color11 ${brightYellow}
color12 ${brightBlue}
color13 ${brightMagenta}
color14 ${brightCyan}
color15 ${term_fg}

# extended colors
color16 ${brightYellow}
color17 ${brightRed}
]], colors)
  return kitty
end

return M
