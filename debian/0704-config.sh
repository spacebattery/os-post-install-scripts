#!/bin/sh

install() {
  (cd ~/ && wget https://raw.githubusercontent.com/zaromev/zsh-hyper/master/.zshrc)
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
