#!/bin/bash
#
# Script to copy dotfiles to git directories
#

rsync -a --mkpath --delete /home/zane/.config/nvim/* .config/nvim/
