#!/bin/bash

# Installs vimrc and tmux.conf if files don't already exist

# Vim
if [ ! -f ~/.vimrc ]; then
    echo "\"Default Configuration (Added by Environment-Setup)" > ~/.vimrc
else
    echo "" >> ~/.vimrc
    echo "\"Default Configuration (Added by Environment-Setup)" >> ~/.vimrc
fi
cat default_configs/vimrc.txt >> ~/.vimrc

# Tmux
if [ ! -f ~/.tmux.conf ]; then
    echo "\"Default Configuration (Added by Environment-Setup)" > ~/.tmux.conf
else
    echo "" >> ~/.tmux.conf
    echo "\"Default Configuration (Added by Environment-Setup)" >> ~/.tmux.conf
fi
cat default_configs/tmux_conf.txt >> ~/.tmux.conf
