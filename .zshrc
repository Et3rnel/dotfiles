# Walk settings: https://github.com/antonmedv/walk
export EDITOR=fleet

function lk {
  cd "$(walk "$@")"
}