#!/bin/bash

# Installing Solarized
git clone git://github.com/altercation/vim-colors-solarized.git
mv vim-colors-solarized ~/.vim/bundle/

# Adding Solarized to vimrc
if [ ! -f ~/.vimrc ]; then
    echo "\" For Solarized (Added by Environment-Setup)" > ~/.vimrc
else
    echo "" >> ~/.vimrc
    echo "\" For Solarized (Added by Environment-Setup)" >> ~/.vimrc
fi

echo "set background=dark" >> ~/.vimrc
echo "set t_Co=16" >> ~/.vimrc
echo "let g:solarized_termcolors=256 \"comment this line out theme looks weird" >> ~/.vimrc
echo "colorscheme solarized" >> ~/.vimrc
