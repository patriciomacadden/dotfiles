# dotfiles
alias reload='source ~/.bash_profile && echo "sourced ~/.bash_profile"'

# bundler aliases
alias be='bundle exec'
alias bi='bundle install'
alias bs='bundle show'
alias bu='bundle update'

# directory
alias md='mkdir -p'

# grep
alias grep='grep --color=auto'

# mac os x
alias dsclean='find . -type f -name .DS_Store -print0 | xargs -0 rm'

# memcached aliases
alias flush_memcached='echo "flush_all" | nc localhost 11211'

