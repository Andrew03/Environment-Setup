#!/bin/bash

# Install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Adding Pathogen to vimrc
if [ ! -f ~/.vimrc ]; then
    echo "\" For Pathogen (Added by Environment-Setup)" > ~/.vimrc
    echo "execute pathogen#infect()" >> ~/.vimrc
else
    cat ~/.vimrc > /tmp/old_vimrc
    echo "\" For Pathogen (Added by Environment-Setup)" > ~/.vimrc
    echo "execute pathogen#infect()" >> ~/.vimrc
    echo "" >> ~/.vimrc
    cat /tmp/old_vimrc >> ~/.vimrc
fi
