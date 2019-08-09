#!/bin/bash

# TODO git ssh key stuff here
# echo "Creating an SSH key for you..."
# ssh-keygen -t rsa

# echo "Please add this public key to Github \n"
# echo "https://github.com/account/ssh \n"
# read -p "Press [Enter] key after this..."

echo "installing xcode stuff"
xcode-select --install

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "updating homebrew"
brew upgrade && brew update

echo "installing git and setting config"
brew install git
git config --global user.name edj36
git config --global user.email edj36@cornell.edu

echo "installing tools with homebrew"
brew install python
brew install jupyter
brew install ipython
brew install pandoc

echo "linking python"
brew link python

echo "installing pip"
python3 -m pip install --upgrade pip

echo "pip install common libraries"
pip install requests
pip install pandas
pip install tqdm
pip install numpy
pip install matplotlib
pip install scikit-learn
pip install nltk

echo "installing cask to get latex"
brew tap caskroom/cask
brew cask install mactex

echo "cleaning up"

brew cask cleanup
brew cleanup

echo "done"

