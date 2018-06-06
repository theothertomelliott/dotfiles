#!/bin/bash

DOTS="$PWD"

# Clean up existing
rm -rf ~/.vimrc

ln -sFvh $DOTS/vimrc ~/.vimrc
