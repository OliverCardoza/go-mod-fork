#!/bin/bash

git config --global url."https://example.com".insteadOf "https://github.com/"
git config --global url."https://example.com".insteadOf "http://github.com/"
git config --global url."https://example.com".insteadOf "git@github.com:"
git config --global url."https://example.com".insteadOf "git://github"
