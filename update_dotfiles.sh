#!/bin/bash
#
# Script to copy dotfiles to git directories
#
rm -rf .config/nvim/
rsync -a --mkpath --delete /home/zane/.config/nvim/* .config/nvim/
