#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

set -x

NAME=media

find_window() {
  local window=$1
  tmux list-windows -t "$NAME" -F '#{window_name}' \
    | grep -q "^${window}\$"
}

main() {
  tmux has-session -t "$NAME" || {
    tmux new-session -s "$NAME" -c ~/ -n paswd -d bash
  }
  find_window passwd || {
    tmux new-window -n passwd -t "$NAME" bash
  }
  find_window browser || {
    tmux new-window -n browser -t "$NAME" firefox
  }
  [ -f ~/.irssi/config ] && find_window irc || {
    tmux new-window -n irc -t "$NAME" irssi
  }
}

main "$@"
