#!/bin/sh

install() {
  # https://hyper.is/#installation
  (cd ~/Downloads && wget https://hyper-updates.now.sh/download/linux_deb -O hyper.deb)
  # install
  sudo dpkg -i ~/Downloads/hyper.deb
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
