#!/bin/bash

if [[ ! -d $HOME/.vim/pack/vendor/start/nerdtree ]]; then
	mkdir -p $HOME/.vim/pack/vendor/start
fi

git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
