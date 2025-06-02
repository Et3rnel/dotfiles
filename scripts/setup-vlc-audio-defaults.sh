#!/bin/bash

# Script to set VLC as the default application for audio files
# Run this after installing VLC and duti

echo "Setting up VLC as default audio player..."

# Check if VLC is installed
if ! osascript -e 'id of app "VLC"' >/dev/null 2>&1; then
    echo "Error: VLC is not installed. Please install it first with: brew install --cask vlc"
    exit 1
fi

# Check if duti is installed
if ! command -v duti >/dev/null 2>&1; then
    echo "Error: duti is not installed. Please install it first with: brew install duti"
    exit 1
fi

# Get VLC's bundle ID
VLC_BUNDLE_ID=$(osascript -e 'id of app "VLC"')
echo "VLC Bundle ID: $VLC_BUNDLE_ID"

# Common audio file extensions
AUDIO_EXTENSIONS=(
    "mp3"
    "flac"
    "wav"
    "aac"
    "m4a"
    "ogg"
    "wma"
    "aiff"
    "au"
    "ra"
    "ape"
    "opus"
    "3gp"
    "amr"
)

echo "Setting VLC as default for audio file types..."

for ext in "${AUDIO_EXTENSIONS[@]}"; do
    echo "  Setting default for .$ext files..."
    duti -s "$VLC_BUNDLE_ID" ".$ext" all
done

echo "Done! VLC is now set as the default application for audio files."
echo "You may need to restart Finder or log out/in for changes to take full effect."
