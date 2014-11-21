#!/bin/bash

cwd=$(cd "$(dirname "$0")"; pwd)
unamestr=`uname`

## Vim Configuration ##
rm -rf ~/.vimrc
rm -rf ~/.vim
chmod 666 ~/viminfo

ln -s $cwd/.vimrc ~/.vimrc
ln -s $cwd/.vim ~/.vim

## Tmux Configuration ##
rm -rf ~/.tmux.conf
ln -s $cwd/.tmux.conf ~/.tmux.conf

## Bash Configuration ##
if [[ "$unamestr" == 'Darwin' ]]; then
	rm -rf ~/.bash_profile
	ln -s $cwd/.bash_profile ~/.bash_profile
fi

## Trash ##

