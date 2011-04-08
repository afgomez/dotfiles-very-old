source ~/.bash/functions
source ~/.bash/aliases

for file in ~/.bash/completion/* ; do
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