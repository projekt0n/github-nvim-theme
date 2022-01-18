#!/usr/bin/env bash

# Github colors for Tmux

set -g mode-style "fg=#adbac7,bg=#768390"

set -g message-style "fg=#adbac7,bg=#768390"
set -g message-command-style "fg=#adbac7,bg=#768390"

set -g pane-border-style "fg=#444c56"
set -g pane-active-border-style "fg=#539bf5"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#539bf5,bg=#1e2228"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#1e2228,bg=#539bf5,bold] #S #[fg=#539bf5,bg=#1e2228,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#1e2228,bg=#1e2228,nobold,nounderscore,noitalics]#[fg=#1e2228,bg=#1e2228] #{prefix_highlight} #[fg=#768390,bg=#1e2228,nobold,nounderscore,noitalics]#[fg=#545d68,bg=#768390] %Y-%m-%d  %I:%M %p #[fg=#539bf5,bg=#768390,nobold,nounderscore,noitalics]#[fg=#1e2228,bg=#539bf5,bold] #h "

setw -g window-status-activity-style "underscore,fg=#adbac7,bg=#1e2228"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#22272e,bg=#1e2228"
setw -g window-status-format "#[fg=#1e2228,bg=#1e2228,nobold,nounderscore,noitalics]#[fg=#636e7b,bg=#1e2228,nobold,nounderscore,noitalics] #I  #W #F #[fg=#1e2228,bg=#1e2228,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#1e2228,bg=#768390,nobold,nounderscore,noitalics]#[fg=#545d68,bg=#768390,bold] #I  #W #F #[fg=#768390,bg=#1e2228,nobold,nounderscore,noitalics]"
