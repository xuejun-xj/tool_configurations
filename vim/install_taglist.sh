#!/bin/bash

if [[ ! -d $HOME/.vim ]]; then
	echo "mkdir ~/.vim/ directory!"
	mkdir ~/.vim
	mkdir ~/.vim/doc
	mkdir ~/.vim/plugin
	mkdir ~/.vim/autoload
else
	if [[ ! -d $HOME/.vim/doc ]]; then
		echo "mkdir ~/.vim/doc directory!"
		mkdir ~/.vim/doc
	fi
	if [[ ! -d $HOME/.vim/plugin ]]; then
		echo "mkdir ~/.vim/plugin directory!"
		mkdir ~/.vim/plugin
	fi
	if [[ ! -d $HOME/.vim/autoload ]]; then
		echo "mkdir ~/.vim/autoload directory!"
		mkdir ~/.vim/autoload
	fi
	echo
	echo "Start intall TagList Plugin!"
	echo
fi

cd
git clone https://github.com/yegappan/taglist.git taglist || exit 1
mv ./taglist/autoload/ ./taglist/doc/ ./taglist/plugin/ ./.vim/
rm -rf taglist/

exit 0
