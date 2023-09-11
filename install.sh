#!/usr/bin/env bash

# Symlink git config file
mv "$HOME/.gitconfig" "$HOME/.gitconfig.bak"
ln -s "$HOME"/.dotfiles/git/.gitconfig.dist "$HOME"/.gitconfig

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew bundle --file "$HOME"/.dotfiles/Brewfile

# Imrove finder
defaults write com.apple.finder AppleShowAllFiles -bool TRUE
defaults write com.apple.finder ShowPathbar -bool true
killall Finder

# Symlink .zshrc file
mv "$HOME/.zshrc" "$HOME/.zshrc.bak"
ln -s "$HOME"/.dotfiles/.zshrc "$HOME"/.zshrc

# Dev
rustup-init