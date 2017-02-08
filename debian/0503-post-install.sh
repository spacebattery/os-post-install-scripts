#!/bin/sh

install() {
  # https://docs.docker.com/engine/installation/linux/linux-postinstall/
  sudo groupadd docker
  sudo usermod -aG docker $USER
  echo "restart / logout needed"
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
