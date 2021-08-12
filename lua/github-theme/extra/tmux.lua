local util = require("github-theme.util")
local configModule = require("github-theme.config")

local M = {}

---@param config Config
function M.tmux(config)
  config = config or configModule.config
  config.transform_colors = true
  local colors = require("github-theme.colors").setup(config)

  -- luacheck: ignore
  local tmux = util.template([[
#!/usr/bin/env bash

# TokyoNight colors for Tmux

set -g mode-style "fg=${fg},bg=${fg_gutter}"

set -g message-style "fg=${fg},bg=${fg_gutter}"
set -g message-command-style "fg=${fg},bg=${fg_gutter}"

set -g pane-border-style "fg=${bg_visual}"
set -g pane-active-border-style "fg=${blue}"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=${blue},bg=${bg2}"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style ${none}
set -g status-right-style ${none}

set -g status-left "#[fg=${bg2},bg=${blue},bold] #S #[fg=${blue},bg=${bg2},nobold,nounderscore,noitalics]"
set -g status-right "#[fg=${bg2},bg=${bg2},nobold,nounderscore,noitalics]#[fg=${bg2},bg=${bg2}] #{prefix_highlight} #[fg=${fg_gutter},bg=${bg2},nobold,nounderscore,noitalics]#[fg=${black},bg=${fg_gutter}] %Y-%m-%d  %I:%M %p #[fg=${blue},bg=${fg_gutter},nobold,nounderscore,noitalics]#[fg=${bg2},bg=${blue},bold] #h "

setw -g window-status-activity-style "underscore,fg=${fg_light},bg=${bg2}"
setw -g window-status-separator ""
setw -g window-status-style "${none},fg=${bg},bg=${bg2}"
setw -g window-status-format "#[fg=${bg2},bg=${bg2},nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=${bg2},bg=${bg2},nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=${bg2},bg=${fg_gutter},nobold,nounderscore,noitalics]#[fg=${black},bg=${fg_gutter},bold] #I  #W #F #[fg=${fg_gutter},bg=${bg2},nobold,nounderscore,noitalics]"
]], colors)

  return tmux
end

return M
