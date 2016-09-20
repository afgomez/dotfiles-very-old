#!/bin/bash

status="\w"

### Git branchs colorized
branch=$(__git_ps1 "%s")
 if [ -n "$branch" ]; then
   color="\033[0;33m" # blue

   if [[ $branch == master* ]]; then
     color="\033[0;31m" # Red
   fi
   branch=$(printf "${branch}")
   color=$(printf "${color}")

   status="${status}[\[${color}\]${branch}\[\033[0;0m\]]\$ "
else
  status="${status}\$ "
fi

# Don't try to print the server role name if there is none
host=""
if [[ $SERVER_ROLE_NAME ]]; then
    host="\[\033[0;33m\]$SERVER_ROLE_NAME\[\033[0;0m\] "
elif [[ $SSH_CONNECTION ]]; then
    host="\[\033[0;33m\]\h\[\033[0;0m\] "
fi

echo "$host$status"
