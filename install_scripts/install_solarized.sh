#!/bin/bash

git clone git://github.com/altercation/vim-colors-solarized.git
mv vim-colors-solarized ~/.vim/bundle/

echo "set background=dark" >> ~/.vimrc
echo "let g:solarized_termcolors=256 \"comment this line out if not on mac" >> ~/.vimrc
echo "colorscheme solarized" >> ~/.vimrc
