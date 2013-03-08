# bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# bash
export PS1="\w$(__git_ps1)% "
export CLICOLOR=1

# bundler aliases
alias be='bundle exec'
alias bi='bundle install'

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

