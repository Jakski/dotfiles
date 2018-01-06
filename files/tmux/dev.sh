#!/bin/sh

NAME=dev
CODEDIR=~/dev/$1
REVIEWDIR=~/review

tmux has-session -t $NAME
if [ $? != 0 ]
then
    tmux new-session -s $NAME -n "code" -c $CODEDIR -d
    tmux new-window -t $NAME -n "run" -c $CODEDIR
    tmux new-window -t $NAME -n "review" -c $REVIEWDIR
    tmux select-window -t $NAME:1
fi
