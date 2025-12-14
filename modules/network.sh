#!/usr/bin/env bash

set -e

sudo systemctl start sshd
sudo systemctl enable sshd

sudo systemctl start NetworkManager
sudo systemctl enable NetworkManager

sudo reflector \
	--country Vietnam,Singapore \
	--age 24 \
	--protocol https \
	--sort rate \
	--save /etc/pacman.d/mirrorlist
