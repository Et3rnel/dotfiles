# Walk settings: https://github.com/antonmedv/walk
export EDITOR=fleet

# Add init. script to shell
eval "$(starship init zsh)"

function lk {
  cd "$(walk "$@")"
}