#!/usr/bin/env bash

# Github colors for Tmux

set -g mode-style "fg=#c9d1d9,bg=#c5c5c5"

set -g message-style "fg=#c9d1d9,bg=#c5c5c5"
set -g message-command-style "fg=#c9d1d9,bg=#c5c5c5"

set -g pane-border-style "fg=#b3b1ad"
set -g pane-active-border-style "fg=#58a6ff"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#58a6ff,bg=#090c10"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#090c10,bg=#58a6ff,bold] #S #[fg=#58a6ff,bg=#090c10,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#090c10,bg=#090c10,nobold,nounderscore,noitalics]#[fg=#090c10,bg=#090c10] #{prefix_highlight} #[fg=#c5c5c5,bg=#090c10,nobold,nounderscore,noitalics]#[fg=#484f58,bg=#c5c5c5] %Y-%m-%d  %I:%M %p #[fg=#58a6ff,bg=#c5c5c5,nobold,nounderscore,noitalics]#[fg=#090c10,bg=#58a6ff,bold] #h "

setw -g window-status-activity-style "underscore,fg=#b3b1ad,bg=#090c10"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#0d1117,bg=#090c10"
setw -g window-status-format "#[fg=#090c10,bg=#090c10,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#090c10,bg=#090c10,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#090c10,bg=#c5c5c5,nobold,nounderscore,noitalics]#[fg=#484f58,bg=#c5c5c5,bold] #I  #W #F #[fg=#c5c5c5,bg=#090c10,nobold,nounderscore,noitalics]"
