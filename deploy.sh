#!/bin/bash

set -ex

if [ "$TRAVIS_PULL_REQUEST" != "false" ]
then
  exit 0
fi

if [ "$TRAVIS_BRANCH" != "master" ]
then
  echo "This commit was made against the $TRAVIS_BRANCH and not the master! No deploy!"
  exit 0
fi

rev=$(git rev-parse --short HEAD)

cd _book

git init
git config user.name "RuggedPOD"
git config user.email "team@ruggedpod.qyshare.com"

git remote add upstream "https://$GH_TOKEN@github.com/ruggedpod/ruggedpod-doc.git"
git fetch upstream
git reset upstream/gh-pages

touch .

git add -A .
git commit -m "Generate documentation website at ${rev}"
git push -q upstream HEAD:gh-pages
