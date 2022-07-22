#!/bin/bash

RUNTIMEPATH=${1%doc*}
TEST=${1##*doc}
echo $RUNTIMEPATH $TEST
if [ "$1" = "" ] || [ "$TEST" = "/" ]; then
	echo "usage: ./install_cn_docs.sh <runtime_path> [vimcdoc_version]"
	echo "To get runtime_path: vim  =>  :set rtp?  => get one of the doc/ directory in the path"
	echo "example: /usr/share/vim/vim81/doc/"
	exit 1
fi

VIMDOCVERSION=$2
if [ "$VIMDOCVERSION" = "" ]; then
	VIMDOCVERSION=vimcdoc-2.2.0
fi

wget https://sourceforge.net/projects/vimcdoc/files/vimcdoc/$VIMDOCVERSION.tar.gz
tar xzf ./$VIMDOCVERSION.tar.gz
sleep 5
sudo cp -r $VIMDOCVERSION/doc/* $RUNTIMEPATH

rm -rf $VIMDOCVERSION/ $VIMDOCVERSION.tar.gz
echo "Install chinese vim docs succeed!"
