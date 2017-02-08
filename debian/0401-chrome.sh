#!/bin/sh

install() {
  # download chrome
  (cd ~/Downloads && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb)
  # install
  sudo dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb
}

uninstall() {
  # uninstall
  sudo dpkg -r google-chrome-stable
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
