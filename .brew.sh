#!/usr/bin/env bash

# VitorAlencar 🍺 Brewfile
echo ----------------------------------
echo Install all AppStore Apps at first! 🚨
echo ----------------------------------

# No solution to automate AppStore installs
read -p "Press any key to continue... " -n1 -s
echo  '\n'

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# install dependencies
echo ----------------------------------
echo Install Homebrew, wget and cask ⏬
echo ----------------------------------

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#brew Core install
echo ----------------------------------
echo Prepare Brew binares 🍻
echo ----------------------------------

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

echo ----------------------------------
echo installing Core packages 📦
echo ----------------------------------

brew install vim
brew install wget
brew install grep
brew install screen
brew install graphviz

# General
brew install z
brew install git
brew install vim
brew install zsh
brew install nvm
brew install tmux
brew install node
brew install yarn
brew install tree
brew install gnupg
brew install ngrep
brew install ctags
brew install mackup
brew install openssl
brew install progress
brew install imagemagick
brew install the_silver_searcher
brew install zsh-syntax-highlighting
brew install reattach-to-user-namespace

# Clean brew list (for HD space)
brew cleanup

# Install personal apps
echo ----------------------------------
echo Installing personal Applications 👩‍🚀
echo ----------------------------------

brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" dozer
brew cask install --appdir="/Applications" setapp
brew cask install --appdir="/Applications" notion
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" caffeine
brew cask install --appdir="/Applications" polymail
brew cask install --appdir="/Applications" rectangle
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" the-unarchiver
brew cask install --appdir="/Applications" suspicious-package
brew cask install --appdir="/Applications" android-file-transfer
brew cask install --appdir="/Applications" google-backup-and-sync

# Development apps
echo ----------------------------------
echo Installing Development Apps 💻
echo ----------------------------------

brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" postman
brew cask install --appdir="/Applications" sublime-merge
brew cask install --appdir="/Applications" visual-studio-code

echo ----------------------------------
echo installing all Quick look Plugins 🔍
echo ----------------------------------

brew cask install qlstephen
brew cask install qlmarkdown
brew cask install qlcolorcode
brew cask install betterzipql
brew cask install qlimagesize
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install webpquicklook
brew cask install quicklook-json
brew cask install quicklookase qlvideo

# cleanup
echo ----------------------------------
echo Cleaning directories 🗑
echo ----------------------------------

brew cleanup
rm -f -r /Library/Caches/Homebrew/*

# node development packages
echo ----------------------------------
echo instaling npm global dependencies
echo ----------------------------------

npm i -g surge
npm i -g ngrok
npm i -g eslint
npm i -g fixpack
npm i -g npm-check
npm i -g json-server
npm i -g http-server
npm i -g pure-prompt
npm i -g browser-sync
npm i -g source-map-explorer