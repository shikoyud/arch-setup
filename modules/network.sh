#!/usr/bin/env bash

set -e

sudo systemctl start sshd
sudo systemctl enable sshd

sudo systemctl start NetworkManager
sudo systemctl enable NetworkManager
