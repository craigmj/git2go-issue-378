#!/bin/bash
set -e
if [[ "init" == $1 ]]; then
	echo 'Initializing - password might be requested for sudo'
	sudo apt-get update
	sudo apt-get install -y git vim golang
fi
if [[ ! -d /usr/local/libgit2 ]]; then
	echo 'Installing libgit2 - password might be requested for sudo'
	./install-libgit2.sh
fi

export GOPATH=`pwd`

for l in 'gopkg.in/libgit2/git2go.v25'; do
	if [[ ! -d src/$l ]]; then
		go get $l
	fi
done
go build -o ./gtest src/cmd/gtest.go
