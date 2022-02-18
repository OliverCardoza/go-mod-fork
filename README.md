# go-mod-fork

Experiments with how a git mirror at a location separate from import path could be used.

Notes:

* attempts to mirror a Go module with different content will fail go.sum checks
* git url.insteadOf magic may work but it's undesirable
* go mod vendor seems like the best option prior to mirroring

Forks/Mirrors/Evils:

* github.com/OliverCardoza/go-mod-fork-test: main Go mod repo
* bitbucket.org/OliverCardoza/go-mod-fork-test: mirror repo
* github.com/OliverCardoza/go-mod-fork-test-evil: evil fork which changes content (should get caught by go.sum)
