#git2go-issue-378
Brief go build file demonstrating error with git2go build.

This example demonstrates the issue I describe in https://github.com/libgit2/git2go/issues/378

#Installation
Just run

    ./build.sh init

with a user who has sudo privileges. The `init` parameter will apt-get various requirements (golang, vim, cmake, etc). It will also install `/usr/local/libgit2`, so don't use this on your main machine unless you want to install libgit2 universally. 

#Easy Testing
I've been testing this using Linux Containers, to be sure that I'm working on clean machines. You could equally well do it using a VM.