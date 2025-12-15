#!/usr/bin/env bash

set -e

cd "$HOME"
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.tar.gz
tar -xzf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz
cd nvim-linux-x86_64
sudo cp -r bin lib /usr/local/
sudo cp -r share/man/man1 /usr/local/share/man
cd "$HOME"
rm -rf nvim-linux-x86_64
