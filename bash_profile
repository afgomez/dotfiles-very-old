source ~/.bash/functions
source ~/.bash/aliases

# Include local completions
for file in ~/.bash/completion/* ; do
  source $file
done

# Include homebrew completions
for file in $(brew --prefix)/etc/bash_completion.d/* ; do
  source $file
done


# Config
source ~/.bash/config

# Other bash files
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

if [ -f ~/.localrc ]; then
  . ~/.localrc
fi
