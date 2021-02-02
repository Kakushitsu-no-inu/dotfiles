#!/bin/bash

if [[ ! -d "$HOME/.config/fish" ]]; then
  cp -r ./fish $HOME/.config/fish
else
  rm -rf $HOME/.config/fish
  cp -r ./fish $HOME/.config/fish
fi

if [[ ! -d "$HOME/.config/nvim" ]]; then
  cp -r ./nvim $HOME/.config/nvim
else
  rm -rf $HOME/.config/nvim 
  cp -r ./nvim $HOME/.config/nvim 
fi 

if [[ ! -d "$HOME/.config/kitty" ]]; then
  cp -r ./kitty $HOME/.config/kitty
else
  rm -rf $HOME/.config/kitty
  cp -r ./kitty $HOME/.config kitty
fi

if [[ -f "$HOME/.vimrc" ]]; then
  mv $HOME/.vimrc $HOME/.vimrc.pre-installtion-dotfiles
  cp ./.vimrc $HOME/.vimrc
else
  cp ./.vimrc $HOME/.vimrc
fi

if [[ -f "$HOME/.gdbinit" ]]; then
  mv $HOME/.gdbinit $HOME/.gdbinit.pre-installtion-dotfiles
  cp ./.gdbinit $HOME/.gdbinit
else
  cp ./.gdbinit $HOME/.gdbinit
fi

if [[ -f "$HOME/.gitconfig" ]]; then
  mv $HOME/.gitconfig $HOME/.gitconfig.pre-installtion-dotfiles
  cp ./.gitconfig $HOME/.gitconfig
else
  cp ./.gitconfig $HOME/.gitconfig
fi
