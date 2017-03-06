#!/bin/sh

install() {
  # https://github.com/zaromev/zsh-hyper
  # https://github.com/robbyrussell/oh-my-zsh#basic-installation
  sudo apt install zsh -y
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
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
