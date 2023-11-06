#!/bin/bash

read -r -p "project name: " NAME
read -r -p "github user name: " GITHUB_USERNAME

# Make folder
DIRECTORY=~/Documents/coding-projects/"$NAME"
mkdir "$DIRECTORY"
touch "$DIRECTORY"/main.py


# Set up git
cd "$DIRECTORY" || exit
git init
git add "*"
git commit --message "init"

# Set up Github
gh repo create "$NAME" --public
git remote add orgin https://github.com/"$GITHUB_USERNAME"/"$NAME".git
git push -u origin master

# Open in VSCode

# NOTE: if you use Flatpak version of VSCode or VSCodium, you need an alias of code to run it
code "$DIRECTORY"