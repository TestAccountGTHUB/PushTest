#!/bin/sh

setup_git() {
  git config --global user.email "trythisemail123@gmail.com"
  git config --global user.name "TestAccountGTHUB"
}

commit_website_files() { 
  git add .
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER [skip CI]"
}

upload_files() {
  git push
}

setup_git
commit_website_files
upload_files
