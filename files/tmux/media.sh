#!/bin/sh

NAME=media

tmux has-session -t $NAME
if [ $? != 0 ]; then
    tmux new-session -s $NAME -n browser -c ~/ -d firefox
    tmux new-window -n irc -t $NAME irssi
fi
