#!/usr/bin/env bash
set -euo pipefail

require_cmd() {
	command -v "$1" >/dev/null 2>&1 || {
		echo "Missing required command: $1"
		exit 1
	}
}

require_cmd "sudo"
require_cmd "pacman"

sudo -v

#network
sudo pacman -Syu --needed --noconfirm $(cat pacman/network.txt)
source modules/network.sh
#dev
sudo pacman -S --needed --noconfirm $(cat pacman/dev.txt)
source modules/rustup.sh
#tools
sudo pacman -S --needed --noconfirm $(cat pacman/tools.txt)
#fonts
sudo pacman -S --needed --noconfirm $(cat pacman/fonts.txt)
yay -S --needed --noconfirm $(cat yay/fonts.txt)
#shell
sudo pacman -S --needed --noconfirm $(cat pacman/shell.txt)

source modules/shell.sh
source modules/yay.sh
source modules/nvim-nightly.sh

#hyprland
sudo pacman -S --needed --noconfirm $(cat pacman/hyprland.txt)
yay -S --needed --noconfirm $(cat yay/hyprland.txt)
