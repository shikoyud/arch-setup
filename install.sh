#!/usr/bin/env bash
set -euo pipefail

log_info() {
	printf "\n[INFO]: %s\n" "$1"
}

log_error() {
	printf "\n[ERROR]: %s\n" "$1"
}

require_cmd() {
	command -v "$1" >/dev/null 2>&1 || {
		log_error "Missing required command: $1"
		exit 1
	}
}

require_cmd "pacman"
require_cmd "sudo"

sudo -v

log_info "Installing core packages..."
sudo pacman -S --needed --noconfirm $(cat pacman/base.txt)

log_info "Running core module"
source modules/core.sh
