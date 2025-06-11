#!/usr/bin/env bash

# Symlink git config file
mv "$HOME/.gitconfig" "$HOME/.gitconfig.bak"
ln -s "$HOME"/.dotfiles/git/.gitconfig.dist "$HOME"/.gitconfig

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

# Hide the Dock when not in use
defaults write com.apple.dock autohide -bool true

killall Dock

# Backup and symlink .zshrc file
mv "$HOME/.zshrc" "$HOME/.zshrc.backup"
ln -s "$HOME/.dotfiles/.zshrc" "$HOME/.zshrc"

# Symlink Ghostty config
mkdir -p "$HOME/Library/Application\ Support/com.mitchellh.ghostty"
ln -sf "$HOME/.dotfiles/ghostty/config" "$HOME/Library/Application\ Support/com.mitchellh.ghostty/config"

# Setup VLC as default audio player
echo "Setting up VLC as default audio player..."
if [ -f "$HOME/.dotfiles/scripts/setup-vlc-audio-defaults.sh" ]; then
    "$HOME/.dotfiles/scripts/setup-vlc-audio-defaults.sh"
else
    echo "VLC setup script not found. You can run it manually later."
fi
