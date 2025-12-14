#!/usr/bin/env bash

set -e

DOTFILES_DIR="$HOME/dotfiles"

[ -d "$DOTFILES_DIR" ] || git clone https://github.com/shikoyud/dotfiles "$DOTFILES_DIR"

cd "$DOTFILES_DIR"

stow nvim fish tmux starship
