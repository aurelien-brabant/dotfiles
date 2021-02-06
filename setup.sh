#! /bin/bash

function symlink() {
	printf "[\033[0;36mSYMLINK\033[0m] $1 -> $2\n" 
}

function fetch() {
	printf "[\033[0;34mFETCH\033[0m] FROM: $1 TO: $2\n"
}

NVIM_CONFIG_PATH="$HOME/.config/nvim"
VIM_PLUG_SOURCE="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

REDSHIFT_CONFIG_PATH="$HOME/.config"

DWM_PATH="$HOME/.dwm"
ST_TERM_PATH="$HOME/.st-term"

# dwm

symlink $PWD/dwm.config.h $DWM_PATH/config.h
ln -sf $PWD/dwm.config.h $DWM_PATH/config.h

# suckless terminal

symlink $PWD/st.config.h $ST_TERM_PATH/config.h
ln -sf $PWD/st.config.h $ST_TERM_PATH/config.h

# redshift
mkdir -p $REDSHIFT_CONFIG_PATH/redshift.conf 2> /dev/null

symlink $PWD/redshift.conf $REDSHIFT_CONFIG_PATH/redshift.conf
ln -sf $PWD/redshift.conf $REDSHIFT_CONFIG_PATH/redshift.conf

# neovim

mkdir -p $NVIM_CONFIG_PATH 2> /dev/null

fetch $VIM_PLUG_SOURCE $NVIM_CONFIG_PATH/autoload/plug.vim
curl -fLo $NVIM_CONFIG_PATH/autoload/plug.vim --create-dirs $VIM_PLUG_SOURCE

symlink $PWD/init.vim $NVIM_CONFIG_PATH/init.vim
symlink $PWD/init.vim $HOME/.vimrc
ln -sf $PWD/init.vim $NVIM_CONFIG_PATH/init.vim
ln -sf $PWD/init.vim $HOME/.vimrc

symlink $PWD/zshrc $HOME/.zshrc
ln -sf $PWD/zshrc $HOME/.zshrc
