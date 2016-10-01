if [ $USER == "root" ]; then
  prompt_color=$red
else
  prompt_color=$templ
fi

#export PS1='\[$white\]\w$(parse_git_branch)\[$prompt_color\] ⌘ \[$reset_colors\] '
export PS1='\[$white\]\w$(parse_git_branch)\[$prompt_color\] ❯\[$reset_colors\] '

