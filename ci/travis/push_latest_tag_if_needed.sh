#!/bin/bash
git fetch --tags # update tags
echo "$GH_TOKEN"

if ! git tag -l --points-at HEAD | grep -q latest; then # check if we are NOT on latest tag already
  #- export GIT_TAG=$TRAVIS_BRANCH-0.1.$TRAVIS_BUILD_NUMBER
  git config --local user.email "builds@travis-ci.com"
  git config --local user.name "Travis CI"
  git tag "latest" -fa -m "Generated tag from TravisCI for build $TRAVIS_BUILD_NUMBER"
  git push -f https://$GH_TOKEN@github.com/ice0/mpm --tags
fi
