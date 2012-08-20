#!/bin/bash

./build.sh
git checkout gh-pages
git pull origin gh-pages
git merge master
git push origin gh-pages
git checkout master

echo -e "\033[33m √ Publish complete"
echo -e -n "\033[0m"

