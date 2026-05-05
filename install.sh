#!/bin/bash
git clone \
  https://github.com/folke/lazy.nvim.git \
  ~/.local/share/nvim/lazy/lazy.nvim

sudo apt install -y xclip ripgrep

ln -s ~/core/refinery/nvim ~/.config/nvim
