#!/usr/bin/env bash

# Symlink git config file
mv "$HOME/.gitconfig" "$HOME/.gitconfig.bak"
ln -s "$HOME"/.dotfiles/git/.gitconfig.dist "$HOME"/.gitconfig

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew bundle --file "$HOME"/.dotfiles/Brewfile

# View Hidden Files & Folders
defaults write com.apple.finder AppleShowAllFiles -bool TRUE
killall Finder