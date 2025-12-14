#!/usr/bin/env bash

set -e

DOTFILES_DIR="$HOME/dotfiles"

[ -d "$DOTFILES" ] || git clone https://github.com/shikoyud/dotfiles "$DOTFILES"

cd "$DOTFILES_DIR"

stow nvim fish tmux starship
