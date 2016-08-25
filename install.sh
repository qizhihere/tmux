#!/usr/bin/env sh

PWD=$(readlink -f "$(dirname "$0")")

for x in .tmux .tmux.conf .tmuxomatic; do
    cmd="ln -sf \"$PWD/$x\" \"$HOME/$x\""
    echo "$cmd"
    eval "$cmd"
done
