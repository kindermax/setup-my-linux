#!/bin/bash

function sync() {
  REPO=$HOME/code/github/setup-my-linux
  cd $REPO

  STASH_RESULT=$(git stash)
  git switch main

  cp -r $HOME/.config/nvim/lua/custom/* $REPO/nvim/nvim/lua/custom/

  BRANCH="sync-nvim"
  git branch -D $BRANCH || true
  git checkout -b $BRANCH
  git add nvim
  git commit -m "sync nvim"
  git push origin $BRANCH
  git switch main
  git branch -D $BRANCH
  git pull
  if [[ "$STASH_RESULT" != "No local changes to save" ]]; then
    git stash pop
  fi
}

sync
