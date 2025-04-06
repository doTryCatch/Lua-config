#!/bin/bash
SESSION_PATH="$HOME/.local/share/nvim/session.vim"

# Ensure directory exists
mkdir -p "$(dirname "$SESSION_PATH")"


# Load session only if it exists
if [ -f "$SESSION_PATH" ]; then
    nvim -S "$SESSION_PATH"
else
    echo "Session file not found!"
    nvim
fi
