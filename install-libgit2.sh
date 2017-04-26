#!/bin/bash
set -e
sudo apt-get install -y cmake
cd /usr/local/
if [[ ! -d libgit2 ]]; then
	git clone https://github.com/libgit2/libgit2.git
fi
cd libgit2
sudo chown -R $USER:$USER .
if [[ ! -d build ]]; then
	mkdir build
fi
cd build
cmake ..
cmake --build .
sudo cmake --build . --target install
