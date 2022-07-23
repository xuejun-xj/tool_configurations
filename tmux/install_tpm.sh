#!/bin/bash

if [[ ! -d "$HOME/.tmux/plugins/" ]]; then
	mkdir -p $HOME/.tmux/plugins
fi

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

if [[ $? -ne 0 ]]; then
	echo "Git clone tmux-tpm failed! Please retry."
	exit 1
else
	echo "Install tmux-tpm succeed!"
	echo "Please entry tmux session and type '<prefix> + I'"
fi
