# bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

function parse_git_branch() {
  __git_ps1
}

# bash
export PS1='\w$(parse_git_branch) ☁  '
export CLICOLOR=1

# aliases
. ~/.common/aliases.sh
. ~/.common/homebrew.sh
. ~/.common/rbenv.sh

