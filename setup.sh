#!/bin/sh

# TODO add a function to automate link creation

eval "$(/opt/homebrew/bin/brew shellenv 2> /dev/null)" || eval "$(/usr/local/bin/brew shellenv)"

ln -s ~/.dotfiles/fish ~/.config/fish

# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# nvm install --lts

ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/git ~/.config/git
ln -s ~/.dotfiles/starship.toml ~/.config/starship.toml
ln -s ~/.dotfiles/bat ~/.config/bat
ln -s ~/.dotfiles/wezterm ~/.config/wezterm

# Update bat cache (for theme)
bat cache --build

pyenv global 3.12.3


# Maybe update /etc/hosts to comment ::1 localhost
