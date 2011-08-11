#!/bin/bash

# install .bash_profile
cp bash_profile ~/.bash_profile
echo "bash_profile successfully installed."

# install vim config
cp vimrc ~/.vimrc
cp -R vim/ ~/.vim 
echo "vim configuration successfully installed."

# install gemrc
cp gemrc ~/.gemrc
echo "gemrc successfully installed."
