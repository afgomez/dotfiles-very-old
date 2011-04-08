# Provides autocompletion for the c command
function _c {
  local cur prev opts
  COMREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"
  directories="$(command ls -d ~/code/*/ | awk -F"/"  '{ print  $(NF-1) }' | tr '\n' ' ')"
  
  COMPREPLY=( $(compgen -W "${directories}" -- ${cur}) )
  return 0
  
}

complete -F _c c