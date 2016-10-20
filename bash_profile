source ~/.bash/functions
source ~/.bash/aliases

# Config
source ~/.bash/config

# Load bash-completion from homebrew
if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
  . $(brew --prefix)/share/bash-completion/bash_completion
fi
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Include local completions
for file in ~/.bash/completion/* ; do
  source $file
done

# Command corrector
type thefuck >/dev/null 2>&1 && eval "$(thefuck --alias)"

# Rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Other bash files
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

if [ -f ~/.localrc ]; then
  . ~/.localrc
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
