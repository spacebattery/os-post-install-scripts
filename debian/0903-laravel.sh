#!/bin/sh

install() {
  # https://laravel.com/docs/5.4
  sudo composer global require "laravel/installer"
  echo "Make sure to place the \$HOME/.composer/vendor/bin directory in \$PATH"
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
