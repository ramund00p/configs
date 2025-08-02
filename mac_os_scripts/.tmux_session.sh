#!/bin/bash

SESSION_NAME="dev"

# Start new tmux session in detached mode
tmux new-session -d -s $SESSION_NAME

# Rename first window to 'code' and cd to your project (optional)
tmux rename-window -t $SESSION_NAME:1 'code'
tmux send-keys -t $SESSION_NAME:1 'nvim .' C-m  # or your editor

# Create 'test' window for running server or tests
tmux new-window -t $SESSION_NAME:2 -n 'test'

# Create 'extra' window
tmux new-window -t $SESSION_NAME:3 -n 'extra'

# Attach to the session
tmux attach -t $SESSION_NAME
