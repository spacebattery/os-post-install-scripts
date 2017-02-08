#!/bin/sh

install() {
  # https://docs.docker.com/engine/installation/linux/ubuntu/
  sudo apt-get install -y apt-transport-https \
    software-properties-common \
    ca-certificates \
    curl
  curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -
  sudo apt-get install software-properties-common
  sudo add-apt-repository \
    "deb https://apt.dockerproject.org/repo/ \
    ubuntu-$(lsb_release -cs) \
    main"
  sudo apt-get update
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
