#! /bin/bash


git add .

git commit -m $(date +%Y%m%d%H%M%S) --no-verify

git pull
