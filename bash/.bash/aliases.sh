# bundler aliases
alias be="bundle exec"
alias bi="bundle install"
alias bs="bundle show"
alias bu="bundle update"

# dotfiles
alias reload="exec $SHELL -l"

# http server
alias serve="ruby -run -e httpd -- -p 4444 $1"

# IP Addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

# macOS
alias dsclean="find . -type f -name .DS_Store -print0 | xargs -0 rm"
# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lsclean="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
# Empty the Trash on all mounted volumes and the main SSD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# neovim
alias vim="nvim -p"
alias vi="nvim -p"

# postgresql
alias pgfix="rm /usr/local/var/postgres/postmaster.pid"

# ssh
alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy | printf '=> Public key copied to clipboard.\n'"

# sudo: allow aliases to work with sudo
alias sudo="sudo "
