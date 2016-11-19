#!/bin/bash

DOTS="$PWD"

# Clean up existing
rm -rf ~/.vimrc
rm -rf ~/.atom

ln -sFvh $DOTS/vimrc ~/.vimrc
ln -sFvh $DOTS/atom ~/.atom

$DOTS/scripts/atom/clearpackages.sh
$DOTS/scripts/atom/installpackages.sh

