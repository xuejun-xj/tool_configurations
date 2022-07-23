#!/bin/bash

yum --help
if [[ $? -eq 0 ]]; then
	sudo yum install -y libevent-dev libncurses-dev
else
	sudo apt install -y libevent-devel libncurses-devel
fi

function clean {
	echo "Install tmux failed!"
	cd /tmp
	rm -rf tmux-2.7.tar.gz tmux-2.7
	exit 1
}

cd /tmp
wget https://github.com/tmux/tmux/releases/download/2.7/tmux-2.7.tar.gz
tar xzf tmux-2.7.tar.gz

cd tmux-2.7
mkdir build
cd build
../configure || clean
make -j$(nproc) || clean
sudo make install || clean

echo
echo "Install tmux succeed!"
cd /tmp
rm -rf tmux-2.7.tar.gz tmux-2.7
