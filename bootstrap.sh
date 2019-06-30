#!/usr/bin/env bash

{

#set -xue  # To enable debugging

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

for file in {zshrc,exports,aliases,functions,extra,vimrc,gitconfig,gitignore_global,tmux.conf}; do
  ln -sfn $DIR/.$file ~/.$file
done;
 
}
