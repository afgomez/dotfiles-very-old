# Provides autocompletion for the c command
function _c {
  CODE_PATH="${CODE_PATH:-~/code}"
  local cur prev opts
  COMREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"
  directories="$(command ls -d $CODE_PATH/*/ | awk -F"/"  '{ print  $(NF-1) }' | tr '\n' ' ')"

  COMPREPLY=( $(compgen -W "${directories}" -- ${cur}) )
  return 0

}

complete -F _c c
