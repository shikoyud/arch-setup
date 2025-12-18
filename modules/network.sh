#!/usr/bin/env bash

set -e

sudo systemctl start sshd
sudo systemctl enable sshd

sudo systemctl enable bluetooth

sudo reflector \
	--country Vietnam,Singapore \
	--age 24 \
	--protocol https \
	--sort rate \
	--save /etc/pacman.d/mirrorlist
