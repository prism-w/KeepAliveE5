#!/usr/bin/env bash

git config user.name "prism-w"
git config user.email "prism.wu@gmail.com"

find config -name '*.json' -size -100c -delete 2>/dev/null

git checkout --orphan latest_branch
git rm -rf --cached .
git add -A
git commit -m "$1"
git branch -D master
git branch -m master