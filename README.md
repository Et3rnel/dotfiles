# My Dotfiles

Welcome to my Dotfiles repository! This repository contains various configurations, settings, and aliases that I use to customize my environment.

## Usage

1. **Clone the repository**

   To get started, clone this repository into your home directory (`~`):

   ```bash
   cd ~ && git clone https://github.com/Et3rnel/dotfiles.git ~/.dotfiles
   ```

2. **Installation**

    In the Terminal, navigate to the ~/.dotfiles directory and make the installation script executable:

    ```bash
    cd ~/.dotfiles && chmod +x install.sh
    ```

    Run the installation script with elevated privileges (sudo) if required. This will apply the configurations to your system and create symbolic links for the Dotfiles:

    ```bash
    ./install.sh
    ```
    The script will handle the setup process and symlink your Dotfiles to their appropriate locations.

3. **Manuel steps**

    - Import rectangle configuration.
    - Configure alt-tab

## What's Included

This dotfiles repository automatically sets up:

- **Shell Configuration**: `.zshrc` with custom aliases and settings
- **Git Configuration**: Global git settings and configurations
- **Ghostty Terminal**: Terminal emulator configuration
- **VS Code MCP**: Model Context Protocol server configurations for GitHub Copilot (Insiders)
- **Rectangle**: Window management tool configuration
- **macOS Defaults**: System preferences and tweaks

## Configurations Synced

- Git global configuration (`.gitconfig`)
- Zsh shell configuration (`.zshrc`)
- Ghostty terminal configuration
- VS Code MCP server settings (`mcp.json`)
- Rectangle window manager settings
- macOS system defaults and preferences
