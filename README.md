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

The status line component can be added by including `#{toggl_time}` in either your `status-left` or `status-right` in your `~/.tmux.conf`

#### Padding

The status line component can be padded on the left and right when it is active by setting the following variables.

```
set -g @toggl-left-spacer ""
set -g @toggl-right-spacer ""
```

The above snippet surronds the component in Powerline half circles

#### Icon

The `@toggl-icon` variable can be used to add a prefix icons to the component. For example, the following snipper adds a stopwatch icon and a leading space:

```
set -g @toggl-icon "祥"
```

## Planned Features

- Keybinds for starting/stopping timers
- Custom tmux commands to interface with more of the toggl track api
