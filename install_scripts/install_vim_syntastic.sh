#!/bin/bash

# Installs Syntastic (vim-syntastic) for error checking
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic

# Adding settings to vimrc
if [ ! -f ~/.vimrc ]; then
    echo "\" For Syntastic (Added by Environment-Setup)" > ~/.vimrc
else
    echo "" >> ~/.vimrc
    echo "\" For Syntastic (Added by Environment-Setup)" >> ~/.vimrc
fi

echo "set statusline+=%#warningmsg#" >> ~/.vimrc
echo "set statusline+=%{SyntasticStatuslineFlag()}" >> ~/.vimrc
echo "set statusline+=%*" >> ~/.vimrc
echo "let g:syntastic_always_populate_loc_list = 1" >> ~/.vimrc
echo "let g:syntastic_auto_loc_list = 1" >> ~/.vimrc
echo "let g:syntastic_check_on_open = 1" >> ~/.vimrc
echo "let g:syntastic_check_on_wq = 1" >> ~/.vimrc
echo "let g:syntastic_mode = 'active'" >> ~/.vimrc
