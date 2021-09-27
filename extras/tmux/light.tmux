#!/usr/bin/env bash

# Github colors for Tmux

set -g mode-style "fg=#24292e,bg=#babbbd"

set -g message-style "fg=#24292e,bg=#babbbd"
set -g message-command-style "fg=#24292e,bg=#babbbd"

set -g pane-border-style "fg=#e1e4e8"
set -g pane-active-border-style "fg=#0451a5"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#0451a5,bg=#f6f8fa"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#f6f8fa,bg=#0451a5,bold] #S #[fg=#0451a5,bg=#f6f8fa,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#f6f8fa,bg=#f6f8fa,nobold,nounderscore,noitalics]#[fg=#f6f8fa,bg=#f6f8fa] #{prefix_highlight} #[fg=#babbbd,bg=#f6f8fa,nobold,nounderscore,noitalics]#[fg=#697179,bg=#babbbd] %Y-%m-%d  %I:%M %p #[fg=#0451a5,bg=#babbbd,nobold,nounderscore,noitalics]#[fg=#f6f8fa,bg=#0451a5,bold] #h "

setw -g window-status-activity-style "underscore,fg=#586069,bg=#f6f8fa"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#ffffff,bg=#f6f8fa"
setw -g window-status-format "#[fg=#f6f8fa,bg=#f6f8fa,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#f6f8fa,bg=#f6f8fa,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#f6f8fa,bg=#babbbd,nobold,nounderscore,noitalics]#[fg=#697179,bg=#babbbd,bold] #I  #W #F #[fg=#babbbd,bg=#f6f8fa,nobold,nounderscore,noitalics]"
