# homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
chruby ruby-2.5.1

# go
export GOPATH=$HOME/dev/go
