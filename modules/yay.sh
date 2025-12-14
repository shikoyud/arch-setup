#!/usr/bin/env bash

set -Eeuo pipefail

cd "$HOME"

if [[ -d yay ]]; then
  echo "yay directory already exists, removing it"
  rm -rf yay
fi

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd "$HOME"
rm -rf yay
