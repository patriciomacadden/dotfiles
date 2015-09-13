# homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
# homebrewed coreutils
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
# local binscripts
export PATH=~/bin:$PATH

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
chruby ruby-2.2.3

