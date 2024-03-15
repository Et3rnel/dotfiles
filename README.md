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
    cd ~/.dotfiles
    chmod +x install.sh
    ```

    Run the installation script with elevated privileges (sudo) if required. This will apply the configurations to your system and create symbolic links for the Dotfiles:

    ```bash
    ./install.sh
    ```
    The script will handle the setup process and symlink your Dotfiles to their appropriate locations.

3. **Manuel steps**

    - Import rectangle configuration.
    - Add Mos on computer start-up. To allow Mos, open app location and open by right clicking the icon. Also, disable "Smooth scrolling".
    - Configure alt-tab