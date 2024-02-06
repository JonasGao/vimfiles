#!/bin/bash
[ -z "$MY_CONFIG_HOME" ] && echo "There is no MY_CONFIG_HOME" >&2 && exit 1
echo -e "Install vim plug..."
PLUG_TARGET="$HOME/.vim/autoload/plug.vim"
[ -f "$PLUG_TARGET" ] && echo -e "\033[31mAlready exists plug.vim.\033[0m" && exit 2
[ -n "$GIT_MIRROR" ] && echo "Using GIT_MIRROR: $GIT_MIRROR"
curl -fLo $PLUG_TARGET --create-dirs \
  "${GIT_MIRROR}https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
echo -e "\033[32mSuccess install to ~/.vim/autoload/plug.vim\033[0m"
