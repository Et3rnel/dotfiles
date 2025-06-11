# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
export EDITOR=zed

plugins=(
    zsh-autosuggestions
    git
)

# Adding zsh-completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# Source Oh My Zsh to initialize plugins and themes
source $ZSH/oh-my-zsh.sh

# Initialize completion system
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/opt/homebrew/bin/aws_completer' aws

# Adding Makefile autocompletion
# TODO: not sure Makefile autocompletion is working
zstyle ':completion:*:make:*:targets' call-command true
zstyle ':completion:*:make:*' tag-order targets

# Aliases
alias zed="/Applications/Zed.app/Contents/MacOS/cli"
alias t='open -a Ghostty .'

# sst
export PATH=/Users/gaetan/.sst/bin:$PATH

# Go tools (abigen for example)
export PATH=$(go env GOPATH)/bin:$PATH

# Add init. script to shell
eval "$(starship init zsh)"
