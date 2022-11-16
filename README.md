# tmux-toggl

A plugin intended to provided compatibility between tmux and toggl track.

## Features

- Display the currently running Toggl timer duration in the tmux status bar.

## Installation

### Prerequisites

This plugin relies on the python wrappers for toggl track's api provided by [Toggl CLI](https://github.com/AuHau/toggl-cli). 

Ensure that Toggl CLI is installed, accessible from your shell and configured properly before proceeding. 

The plugin assumes that Toggl CLI is installed to the default `python3` installation.

### Tmux Plugin Manager 

Add the following line to `~/.tmux.conf`:

```
set -g @plugin 'JK-Flip-Flop96/tmux-toggl'
```

Ensure this line is set before the plugin manager is run i.e. before `run '~/.tmux/plugins/tpm/tpm'`

## Usage

### Status Line Component

The status line Component can be added by including `#{toggl_time}` in either your `status-left` or `status-right` in your `~/.tmux.conf`
 
