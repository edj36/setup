#!/bin/bash

# TODO git ssh key stuff here

echo "installing xcode stuff"
xcode-select --install

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "updating homebrew"
brew update

echo "installing tools with homebrew"
brew install python
brew install jupyter
brew install ipython
brew install pandoc
brew install git

echo "installing cask to get latex"
brew tap caskroom/cask
brew cask install mactex
