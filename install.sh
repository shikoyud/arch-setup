#!/usr/bin/env bash
set -euo pipefail

log_info() {
	printf "\n[INFO]: %s\n" "$1"
}

require_cmd() {
	command -v "$1" >/dev/null 2>&1 || {
		echo "Missing required command: $1"
		exit 1
	}
}

require_cmd "sudo"
require_cmd "pacman"

sudo -v

log_info "Installing network packages..."
sudo pacman -S --needed --noconfirm $(cat pacman/network.txt)

log_info "Running network module"
source modules/network.sh

log_info "Installing dev packages..."
sudo pacman -S --needed --noconfirm $(cat pacman/dev.txt)
log_info "Installing tools..."
sudo pacman -S --needed --noconfirm $(cat pacman/tools.txt)
log_info "Installing hyprland..."
sudo pacman -S --needed --noconfirm $(cat pacman/hyprland.txt)
log_info "Installing fonts..."
sudo pacman -S --needed --noconfirm $(cat pacman/fonts.txt)
