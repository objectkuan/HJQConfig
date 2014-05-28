#!/bin/sh
rm -rf ~/.vimrc
rm -rf ~/.vim

cwd=$(cd "$(dirname "$0")"; pwd)

ln -s $cwd/.vimrc ~/.vimrc
ln -s $cwd/.vim ~/.vim
