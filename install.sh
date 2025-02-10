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
mkdir -p ~/Documents/screenshots
defaults write com.apple.screencapture location ~/Documents/screenshots
killall SystemUIServer # restarts SystemUIServer to make the change effective immediately

# Activate click on tap (restart required)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Set the display to sleep after 90 minutes of inactivity battery power AND when connected to a charger
sudo pmset -a displaysleep 90

# Set the screensaver activation time to 1 hour (3600 seconds) and restart Dock to apply changes
defaults -currentHost write com.apple.screensaver idleTime -int 3600
killall Dock

# Symlink .zshrc file
ln -s "$HOME"/.dotfiles/.zshrc "$HOME"/.zshrc

# Copy Code settings and shortcuts to Code Insiders
rm ~/Library/Application\ Support/Code\ -\ Insiders/User/settings.json 2>/dev/null
ln -s "$HOME/Library/Application Support/Code/User/settings.json" "$HOME/Library/Application Support/Code - Insiders/User/settings.json"
rm ~/Library/Application\ Support/Code\ -\ Insiders/User/keybindings.json 2>/dev/null
ln -s "$HOME/Library/Application Support/Code/User/keybindings.json" "$HOME/Library/Application Support/Code - Insiders/User/keybindings.json"

# Dev
rustup-init
