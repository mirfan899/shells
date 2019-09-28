#!/bin/bash
## change remote url of repository
git remote set-url origin https://github.com/user/repository
## Show remote oring url
git remote show origin
## remote branches
git remote -v
## local branches
git branch -v

## Clone a specific branch
git clone -b <branch> <remote_repo>
## Example
git clone -b mandarin https://github.com/begeekmyfriend/tacotron.git
