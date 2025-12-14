#!/usr/bin/env bash

set -e

command -v fish | sudo tee -a /etc/shells
chsh -s "$(command -v fish)"
