#! /bin/bash


git add .

git commit -m $1 --no-verify

git pull
