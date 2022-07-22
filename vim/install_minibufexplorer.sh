#!/bin/bash

echo "Start install default version v6.5.0!"

if [[ ! -d "$HOME/.vim/" ]]; then
	mkdir $HOME/.vim
	mkdir $HOME/.vim/plugin
	mkdir $HOME/.vim/doc
else
	if [[ ! -d "$HOME/.vim/plugin/" ]]; then
		mkdir $HOME/.vim/plugin
	fi
	if [[ ! -d "$HOME/.vim/doc/" ]]; then
		mkdir $HOME/.vim/doc
	fi
fi

cd /tmp
git clone https://github.com/fholgado/minibufexpl.vim.git minibuf
if [[ $? -ne 0 ]]; then
	echo "git clone failed!"
	exit 1
fi
cd minibuf
git checkout -b v6.5.0 v6.5.0
mv ./doc/* $HOME/.vim/doc/
mv ./plugin/* $HOME/.vim/plugin/
cd ..
rm -rf minibuf

echo "MiniBufExplorer installed successfully!"
