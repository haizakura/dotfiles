#!/bin/bash

# package manager: Homebrew
# cask: kitty
# formulae: fish mise starship bat zoxide fzf
# fonts: Maple Mono NF CN

# Homebrew
echo "Install Homebrew (will not install if already exists)"
[ -x "$(command -v brew)" ] || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# create symlinks
echo "Create symlinks of dotfiles (will not override if already exists)"
[ -d "$HOME/.config" ] && ln -s $HOME/dotfiles/.config $HOME/.config || ln -s $HOME/dotfiles/.config $HOME/.config

# fish shell
echo "Install fish shell & add fish to /etc/shells (will not install if already exists)"
[ -x "$(command -v fish)" ] || brew install fish | echo $(which fish) | sudo tee -a /etc/shells

# change default shell to fish
echo "Change shell to fish"
chsh -s $(which fish)

# run fish
echo "Run fish shell"
fish

# kitty
echo "Install kitty terminal (will not install if already exists)"
[ -x "$(command -v kitty)" ] || brew install --cask kitty

# mise
echo "Install mise (will not install if already exists)"
[ -x "$(command -v mise)" ] || brew install mise

 # starship
  echo "Install starship (will not install if already exists)"
[ -x "$(command -v starship)" ] || brew install starship

# bat
 echo "Install bat (will not install if already exists)"
[ -x "$(command -v bat)" ] || brew install bat

# zoxide
 echo "Install zoxide (will not install if already exists)"
[ -x "$(command -v zoxide)" ] || brew install zoxide

# fzf
 echo "Install fzf (will not install if already exists)"
[ -x "$(command -v fzf)" ] || brew install fzf

# fonts
echo "Install Maple Mono NF CN fonts (will not install if already exists)"
brew install --cask font-maple-mono-nf-cn
