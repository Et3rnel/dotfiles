# Walk settings: https://github.com/antonmedv/walk
export EDITOR=zed

# Add init. script to shell
eval "$(starship init zsh)"

function lk {
  cd "$(walk "$@")"
}

# Aliases
alias zed="/Applications/Zed.app/Contents/MacOS/cli"
