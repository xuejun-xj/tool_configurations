#!/bin/bash

cd /tmp/
git clone https://github.com/frazrepo/vim-rainbow.git rainbow
if [[ $? -ne 0 ]]; then
	echo "git clone rainbow failed!"
	exit 1
fi
mv rainbow/plugin/* $HOME/.vim/plugin/
rm -rf rainbow
cd $HOME
