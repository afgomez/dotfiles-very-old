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

# Include homebrew completions
# for file in $(brew --prefix)/etc/bash_completion.d/* ; do
#  source $file
# done


# Other bash files
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

if [ -f ~/.localrc ]; then
  . ~/.localrc
fi
