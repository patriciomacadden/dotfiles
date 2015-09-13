# dotfiles
alias reload='exec $SHELL -l'

# bundler aliases
alias be='bundle exec'
alias bi='bundle install'
alias bs='bundle show'
alias bu='bundle update'

# directory
alias md='mkdir -p'

# mac os x
alias dsclean='find . -type f -name .DS_Store -print0 | xargs -0 rm'
# clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

