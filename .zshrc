# Walk settings: https://github.com/antonmedv/walk

export EDITOR=zed
function lk {
  cd "$(walk "$@")"
}

# Aliases
alias zed="/Applications/Zed.app/Contents/MacOS/cli"

# SST (IaC)
export PATH=/Users/gaetan/.sst/bin:$PATH

# Add init. script to shell
eval "$(starship init zsh)"
