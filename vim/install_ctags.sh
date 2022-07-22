#!/bin/bash

if [ "$1" = "-h" ]; then
	echo "./install_ctags.sh [version] (suggest >= 5.6)"
	exit 0
else
	echo "Install default version: ctags-5.6!"
	echo
fi

version=${1:-5.6}
PWD=`pwd`

function clean {
	cd /tmp/
	echo "Install failed!"
	rm -rf ctags-${version}*
	exit 1
}

function main {
	cd /tmp/

	wget https://sourceforge.net/projects/ctags/files/ctags/${version}/ctags-${version}.tar.gz || clean
	tar -xzvf ctags-${version}.tar.gz || clean
	cd ctags-${version}/
	./configure || clean
	make || clean
	sudo make install || clean
	cd ../
	return 0
}

main && cd $PWD && echo "Install ctags succeed!"
