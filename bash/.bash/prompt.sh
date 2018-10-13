bold=`tput bold`
reset=`tput sgr0`

# Tomorrow Dark colors
black=`tput setaf 0`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
magenta=`tput setaf 5`
cyan=`tput setaf 6`
white=`tput setaf 7`

export PS1='\[$white\]\w$(__git_ps1 " on %s") \[$blue\]❯\[$reset\] '
