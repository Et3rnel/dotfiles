#!/usr/bin/env bash

# Symlink git config file
mv "$HOME/.gitconfig" "$HOME/.gitconfig.bak"
ln -s "$HOME"/.dotfiles/git/.gitconfig.dist "$HOME"/.gitconfig

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew bundle --file "$HOME"/.dotfiles/Brewfile

# Improve finder
defaults write com.apple.finder AppleShowAllFiles -bool TRUE
defaults write com.apple.finder ShowPathbar -bool true
killall Finder

# Make screenshots saved in Documents > screenshots instead of the Desktop
mkdir -p ~/Documents/screenshots && \
defaults write com.apple.screencapture location ~/Documents/screenshots && \
killall SystemUIServer # restarts SystemUIServer to make the change effective immediately

# Activate click on tap (restart required)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Symlink .zshrc file
ln -s "$HOME"/.dotfiles/.zshrc "$HOME"/.zshrc

# Dev
rustup-init
