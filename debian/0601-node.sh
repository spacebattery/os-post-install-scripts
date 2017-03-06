#!/bin/sh

install() {
  # https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
  curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
  sudo apt-get install -y nodejs
}

update() {
  sudo apt-get update
  sudo apt-get upgrade -y
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
