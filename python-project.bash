#!/bin/bash

read -r -p "project name: " NAME
read -r -p "github user name: " GITHUB_USERNAME

# Make folder
DIRECTORY=~/Documents/coding-projects/"$NAME"
mkdir "$DIRECTORY"


# Set up git
cd "$DIRECTORY" || exit
git init

# Set up Github
gh repo create "$NAME" --public
git remote add orgin https://github.com/"$GITHUB_USERNAME"/"$NAME".git
git push -u origin master