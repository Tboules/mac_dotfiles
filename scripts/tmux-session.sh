#!/bin/bash

# Check if the session name was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <session-name>"
  exit 1
fi

# Set the session name variable
SESSION_NAME="$1"

# Check if that session already exists
tmux has-session -t $SESSION_NAME 2>/dev/null

if [ $? != 0 ]; then
  tmux new-session -d -s $SESSION_NAME -n neovim
  tmux new-window -t $SESSION_NAME -n node
  tmux new-window -t $SESSION_NAME -n git

  tmux select-window -t $SESSION_NAME:neovim
fi

tmux attach-session -t $SESSION_NAME
