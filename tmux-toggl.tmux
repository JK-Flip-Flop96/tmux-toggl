#!/usr/bin/env python3

import os

cwd = os.path.dirname(os.path.realpath(__file__))

placeholder = "#{toggl_time}"

left_spacer = os.popen('tmux show-option -gqv @toggl-left-spacer').read()
right_spacer = os.popen('tmux show-option -gqv @toggl-right-spacer').read()

call = f'#(python3 {cwd}/tmux-toggl.py "{left_spacer}" "{right_spacer}")'

status_left = os.popen('tmux show-option -gqv status-left').read()
status_right = os.popen('tmux show-option -gqv status-right').read()

if placeholder in status_left:
    os.system(f'tmux set-window-option -g status-left "{status_left.replace(placeholder, call)}"')

if placeholder in status_right:
    os.system(f'tmux set-window-option -g status-right "{status_right.replace(placeholder, call)}"')
