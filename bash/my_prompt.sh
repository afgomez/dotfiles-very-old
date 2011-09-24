#!/bin/bash
	
status="\w"

### Ruby version & gemset colorized
gemset=$(echo $GEM_HOME | awk -F'@' '{print $2}')
 
if [[ "$gemset" != "global" ]]; then
  gemset="@$gemset"
else
  gemset=""
fi

version=$(echo $MY_RUBY_HOME | awk -F'-' '{print $2}')

[ "$version" == "1.8.7" ] && version=""
full="$version$gemset"
if [ "$full" != "" ]; then
	status="${status} [\[\033[0;35m\]${full}\[\033[0;0m\]]"
fi


### Git branchs colorized
branch=$(__git_ps1 "%s")

if [ -n "$branch" ]; then
	color="\033[0;34m" # blue

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
	
	status="${status}[\[${color}\]${branch}\[\033[0;0m\]]\$ "
else
	status="${status} \$ "
fi

echo "$status"