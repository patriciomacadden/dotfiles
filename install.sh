#!/bin/bash

PDW=`pwd`

# bash
ln -nfs $PWD/.bash_profile ~/.bash_profile

# rubygems
ln -nfs $PWD/.gemrc ~/.gemrc

# git
ln -nfs $PWD/.gitconfig ~/.gitconfig
ln -nfs $PWD/.gitignore ~/.gitignore

# irb
ln -nfs $PWD/.irbrc ~/.irbrc

# vim
ln -nfs $PWD/.vim ~/.vim
ln -nfs $PWD/.vimrc ~/.vimrc

echo "The dotfiles were successfully installed."
