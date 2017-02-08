#!/bin/sh

install() {
  # clone Vundle
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  # clone vimrc project
  (cd $GH_DIR && git clone git@github.com:zaromev/vimrc.git)
  # copy .vimrc
  cp $GH_DIR/vimrc/.vimrc ~/.vimrc
  # install Vundle and plugins
  vim +PluginInstall +qall
}

update() {
  # pull vimrc project
  (cd $GH_DIR/vimrc && git pull)
  # copy .vimrc
  cp $GH_DIR/vimrc/.vimrc ~/.vimrc
  # update plugins
  vim +PluginInstall! +qall
}

uninstall() {
  # delete plugins
  rm -rf ~/.vim/bundle
  # remove .vimrc
  rm -f ~/.vimrc
  # remove vimrc project
  rm -rf $GH_DIR/vimrc
}

if [ "$1" = "install" ]; then
  install
elif [ "$1" = "update" ]; then
  update
elif [ "$1" = "uninstall" ]; then
  uninstall
else
  echo "unsupported action $1 on $0"
fi
