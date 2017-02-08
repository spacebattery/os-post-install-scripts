#!/bin/sh

install() {
  # swap dir
  mkdir -p ~/.vim/tmp
}

uninstall() {
  # remove swap dir
  rm -rf ~/.vim/tmp
}

if [ "$1" = "install" ]; then
  install
elif [ "$1" = "update" ]; then
  echo "skipping $1 on $0"
elif [ "$1" = "uninstall" ]; then
  uninstall
else
  echo "unsupported action $1 on $0"
fi
