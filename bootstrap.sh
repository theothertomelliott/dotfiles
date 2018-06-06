#!/bin/bash

DOTS="$PWD"

mkdir $DOTS/thirdparty
git clone https://github.com/skelterjohn/go-pkg-complete.git thirdparty/go-pkg-complete

# Clean up existing
rm -rf ~/.vimrc
[[ -d ~/.vim/bundle/Vundle.vim ]] || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -sFvh $DOTS/vimrc ~/.vimrc
echo "source $DOTS/bash_profile" >> ~/.bash_profile
