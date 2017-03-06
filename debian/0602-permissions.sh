#!/bin/sh

install() {
  # https://docs.npmjs.com/getting-started/fixing-npm-permissions#option-2-change-npms-default-directory-to-another-directory
  mkdir ~/.npm-global
  npm config set prefix '~/.npm-global'
  echo "Add ~/.npm-global to PATH => export PATH=~/.npm-global/bin:\$PATH"
  echo "Re-read PATH => source ~/.profile"
}

if [ "$1" = "install" ]; then
  install
elif [ "$1" = "update" ]; then
  echo "skipping $1 on $0"
elif [ "$1" = "uninstall" ]; then
  echo "skipping $1 on $0"
else
  echo "unsupported action $1 on $0"
fi
