#!/bin/bash 

git pull origin main --rebase
git submodule update --remote --merge 
git add . 
git commit -am "update"
git push origin main