#!/usr/bin/env bash

[ -z "$TMUX" ] && exit 0

name=$(tmux display-message -p -t "$TMUX_PANE" '#{window_name}')
case "$name" in
  "!"*) tmux rename-window -t "$TMUX_PANE" "${name#!}" ;;
esac
