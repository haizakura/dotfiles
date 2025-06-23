#!/bin/bash

# system required: macOS
# package manager: Homebrew
# cask: kitty
# formulae: fish mise starship bat zoxide fzf lsd fd ripgrep git-delta difftastic
# fonts: Maple Mono NF CN

# Homebrew
echo "Install Homebrew (will not install if already exists)"
[ -x "$(command -v brew)" ] || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" || echo "Successfully installed Homebrew"

# create symlinks
echo "Create symlinks of dotfiles (will not override if already exists)"
[ -d "$HOME/.config" ] && ln -s $HOME/dotfiles/.config/* $HOME/.config || ln -s $HOME/dotfiles/.config $HOME

# fish shell
echo "Install fish shell & add fish to /etc/shells & change shell to fish"
[ -x "$(command -v fish)" ] || brew install fish || echo $(which fish) | sudo tee -a /etc/shells || chsh -s $(which fish) || echo "Successfully installed fish shell"

# kitty
echo "Install kitty terminal"
[ -x "$(command -v kitty)" ] || brew install --cask kitty || echo "Successfully installed kitty terminal"

# Install dependencies via Homebrew
echo "Install dependencies via Homebrew (will not install if already exists)"
echo "Dependencies: fish mise starship bat zoxide fzf lsd fd ripgrep git-delta difftastic"

# mise
[ -x "$(command -v mise)" ] || brew install mise || echo "Successfully installed mise"

# starship
[ -x "$(command -V starship)" ] || brew install starship || echo "Successfully installed starship"

# bat
[ -x "$(command -V bat)" ] || brew install bat || echo "Successfully installed bat"

# zoxide
[ -x "$(command -V zoxide)" ] || brew install zoxide || echo "Successfully installed zoxide"

# fzf
[ -x "$(command --version fzf)" ] || brew install fzf || echo "Successfully installed fzf"

# lsd
[ -x "$(command -V lsd)" ] || brew install lsd || echo "Successfully installed lsd"

# fd
[ -x "$(command -V fd)" ] || brew install fd || echo "Successfully installed fd"

# ripgrep git-delta difftastic
echo "Install ripgrep git-delta difftastic"
brew install ripgrep git-delta difftastic || echo "Successfully installed dependencies: ripgrep git-delta difftastic"

# fonts
echo "Install Maple Mono NF CN fonts"
brew install --cask font-maple-mono-nf-cn || echo "Successfully installed Maple Mono NF CN fonts"
