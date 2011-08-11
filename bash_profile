# bash stuff:
export PS1="\w% "

export CLICOLOR=1

export CC=gcc-4.2

# rvm:
[[ -s "/Users/patricio/.rvm/scripts/rvm" ]] && source "/Users/patricio/.rvm/scripts/rvm"

# svn editor: vim
export SVN_EDITOR=vim

# mysql2 gem fix:
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"
