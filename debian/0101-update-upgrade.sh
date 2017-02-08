#!/bin/sh

install() {
  sudo apt update
  sudo apt upgrade -y
}

update() {
  install
}

if [ "$1" = "install" ]; then
  install
elif [ "$1" = "update" ]; then
  update
elif [ "$1" = "uninstall" ]; then
  echo "skipping $1 on $0"
else
  echo "unsupported action $1 on $0"
fi
