#!/bin/bash

cd ~

cp .bashrc Documents/projects/my_setup
cp -r .config/kitty Documents/projects/my_setup
cp -r .config/nvim Documents/projects/my_setup

cd Documents/projects/my_setup

git init
git pull origin master

git add -A
git status

echo "mensagem do commit: "
read msg

git commit -m  "$msg"
git push origin master
