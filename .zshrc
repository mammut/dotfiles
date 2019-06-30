#!/usr/bin/env bash

{

# load zgen
source "$HOME/.zgen/zgen.zsh"
if ! zgen saved; then
  echo 'Starting zgen config'
  zgen prezto
  zgen prezto git
  zgen prezto autosuggestions
  zgen prezto command-not-found
  zgen prezto history-substring-search
	zgen prezto syntax-highlighting

  zgen load mafredri/zsh-async
  #zgen load sindresorhus/pure # Minimal prompt
  zgen load denysdovhan/spaceship-prompt spaceship  # Minimal prompt
  zgen load chrissicool/zsh-256color
  zgen load zakariaGatter/MarkGate
  zgen load zsh-users/zsh-syntax-highlighting

  zgen save
fi
source "$HOME/.zgen/zgen.zsh"


for file in ~/.{path,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

}

