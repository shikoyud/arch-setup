#!/usr/bin/env bash

set -e

if ! grep -q 'EDITOR=nvim' /etc/evironment 2>/dev/null; then
	echo 'EDITOR=nvim' | sudo tee -a /etc/evironment
fi
