#!/bin/bash

DOTS="$PWD"

# Clean up existing
rm -rf ~/.vimrc
[[ -d ~/.vim/bundle/Vundle.vim ]] || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -sFvh $DOTS/vimrc ~/.vimrc
