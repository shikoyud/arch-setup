#!/usr/bin/env bash

set -Eeuo pipefail

rustup default stable

cd "$HOME"

if [[ -d paru ]]; then
  echo "paru directory already exists, removing it"
  rm -rf paru
fi

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

cd "$HOME"
rm -rf paru
