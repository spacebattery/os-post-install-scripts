#!/bin/sh

install() {
  # https://docs.docker.com/engine/installation/linux/ubuntu/
  sudo apt-get -y install docker-engine
}

uninstall() {
  sudo apt-get purge docker-engine
  sudo rm -rf /var/lib/docker
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
