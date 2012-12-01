#!/bin/bash

status="\w"

### Git branchs colorized
branch=$(__git_ps1 "%s")
 if [ -n "$branch" ]; then
   color="\033[0;33m" # blue

   if [[ $branch == master* ]]; then
     color="\033[0;31m" # Red
   fi
   if [[ $branch == dev* ]]; then
     color="\033[0;32m" # Green
   fi
   if [[ $branch == features* ]]; then
     color="\033[0;36m" # Cyan
   fi
   if [[ $branch == fix* ]]; then
     color="\033[0;35m" # Light Red
   fi
   branch=$(printf "${branch}")
   color=$(printf "${color}")

   status="${status}[\[${color}\]${branch}\[\033[0;0m\]]\$ "
else
  status="${status}\$ "
fi

echo "$status"
