#!/bin/bash

read -p "This script deletes files on your local machine. Continue? [yn] " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
  echo "aborting..."
  exit 1
fi

echo "deleting cached versions of github.com/OliverCardoza/go-mod-fork-test..."

# print commands as they are run
set -o xtrace

go clean -i github.com/OliverCardoza/go-mod-fork-test/forktest...
go clean -modcache

git config --global --remove-section url."git@github.com:OliverCardoza/go-mod-fork-test.git"
git config --global --remove-section url."git@github.com:OliverCardoza/go-mod-fork-test-evil.git"
git config --global --remove-section url."git@bitbucket.org:OliverCardoza/go-mod-fork-test.git"

# stop printing commands as they are run
# set +o xtrace
