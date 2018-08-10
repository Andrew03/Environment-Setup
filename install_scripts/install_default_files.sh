#!/bin/bash

# Installs vimrc and tmux.conf if files don't already exist

# Vim
fi [ ! -f ~/.vimrc ]; then
    cp default_configs/vimrc.txt ~/.vimrc
else
    echo "Added by Environment-Setup" >> ~/.vimrc
    cat default_configs/vimrc.txt >> ~/.vimrc
fi

# tmux
if [ ! -f ~/.tmux.conf ]; then
    cp default_configs/tmux_conf.txt ~/.tmux.conf
else
    echo "Added by Environment-Setup" >> ~/.tmux.conf
    cat default_configs/tmux_conf.txt >> ~/.tmux.conf
fi
