#!/usr/bin/env bash

# Github colors for Tmux

set -g mode-style "fg=#c9d1d9,bg=#e1e4e8"

set -g message-style "fg=#c9d1d9,bg=#e1e4e8"
set -g message-command-style "fg=#c9d1d9,bg=#e1e4e8"

set -g pane-border-style "fg=#444c56"
set -g pane-active-border-style "fg=#3b8eea"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#3b8eea,bg=#1f2428"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#1f2428,bg=#3b8eea,bold] #S #[fg=#3b8eea,bg=#1f2428,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#1f2428,bg=#1f2428,nobold,nounderscore,noitalics]#[fg=#1f2428,bg=#1f2428] #{prefix_highlight} #[fg=#e1e4e8,bg=#1f2428,nobold,nounderscore,noitalics]#[fg=#24292e,bg=#e1e4e8] %Y-%m-%d  %I:%M %p #[fg=#3b8eea,bg=#e1e4e8,nobold,nounderscore,noitalics]#[fg=#1f2428,bg=#3b8eea,bold] #h "

setw -g window-status-activity-style "underscore,fg=#d1d5da,bg=#1f2428"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#24292e,bg=#1f2428"
setw -g window-status-format "#[fg=#1f2428,bg=#1f2428,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#1f2428,bg=#1f2428,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#1f2428,bg=#e1e4e8,nobold,nounderscore,noitalics]#[fg=#24292e,bg=#e1e4e8,bold] #I  #W #F #[fg=#e1e4e8,bg=#1f2428,nobold,nounderscore,noitalics]"
