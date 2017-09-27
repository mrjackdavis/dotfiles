#!/bin/bash
brew update
cat $HOME/.package-config/brew | xargs brew install
cat $HOME/.package-config/brew-cask | xargs brew cask install

# Install oh my zsh!
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"