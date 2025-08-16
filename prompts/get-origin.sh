#!/bin/bash

read -p "Add git remote origin: " response
git init
git add .gitignore
git commit -m "first commit"
git branch -M backend
git remote add origin $response
git push -u origin backend