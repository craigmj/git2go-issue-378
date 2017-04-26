package main

import (
	"fmt"
	"log"

	git2go "gopkg.in/libgit2/git2go.v25/"
)

func main() {
	cwd, err := os.Getwd()
	if nil != err {
		log.Fatal(err)
	}
	repo, err := git2go.OpenRepository(cwd)
	if nil != err {
		log.Fatal(err)
	}
	repo.Free()
	fmt.Println(`All worked`)
}
