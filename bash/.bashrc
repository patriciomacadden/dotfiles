[ `uname -s` = "Darwin" ] && [ -f `brew --prefix`/etc/bash_completion ] && source `brew --prefix`/etc/bash_completion
[ `uname -s` = "Linux" ] && [ -f /usr/share/git/completion/git-prompt.sh ] && source /usr/share/git/completion/git-prompt.sh

export CLICOLOR=1

export EDITOR=nvim

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

export GREP_OPTIONS="--color=auto"

export HISTCONTROL=ignoreboth
export HISTSIZE=100000
export HISTFILESIZE=100000

export PATH=$HOME/.bin.local:$HOME/.bin:$PATH

# export PS1='\[$(tput setaf 7)\]\w$(__git_ps1 " on %s") \[$(tput setaf 4)\]❯\[$(tput sgr0)\] '
export PS1='\[$(tput setaf 7)\]\w$(__git_ps1 " on %s") \[$(tput setaf 4)\]λ\[$(tput sgr0)\] '
export PROMPT_COMMAND="history -a"

export TERM="xterm-256color"

shopt -s cdspell
shopt -s histappend

[ -f ~/.aliases ] && source ~/.aliases
