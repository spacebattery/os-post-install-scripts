#!/bin/sh

install() {
  # https://github.com/sindresorhus/pure
  npm install --global pure-prompt
  (cd ~/.oh-my-zsh/custom && wget https://raw.githubusercontent.com/sindresorhus/pure/master/pure.zsh -O pure.zsh-theme)
  (cd ~/.oh-my-zsh/custom && wget https://raw.githubusercontent.com/sindresorhus/pure/master/async.zsh)
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
