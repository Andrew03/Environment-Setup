#!/bin/bash

# Install Powerline
pip install powerline-status


# Install Powerline Fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts


# Find Powerline Root Directory
pip show powerline-status > /tmp/powerline_location.txt
LOCATION_STRING=`sed '8q;d' /tmp/powerline_location.txt`
LOCATION_ARRAY=($LOCATION_STRING)
LOCATION=${LOCATION_ARRAY[1]}


# Enable Powerline on Bash
if [ ! -f ~/.bashrc ]; then
    echo "# For Powerline (Added by Environment-Setup)" > ~/.bashrc
else
    echo "" >> ~/.bashrc
    echo "# For Powerline (Added by Environment-Setup)" >> ~/.bashrc
fi
echo "powerline-daemon -q" >> ~/.bashrc
echo "POWERLINE_BASH_CONTINUATION=1" >> ~/.bashrc
echo "POWERLINE_BASH_SELECT=1" >> ~/.bashrc
echo ". ${LOCATION}/powerline/bindings/bash/powerline.sh" >> ~/.bashrc


# Enable Powerline on Vim
if [ ! -f ~/.vimrc ]; then
    echo "\" For Powerline (Added by Environment-Setup)" > ~/.vimrc
else
    echo "" >> ~/.vimrc
    echo "\" For Powerline (Added by Environment-Setup)" >> ~/.vimrc
fi
echo "set rtp+=${LOCATION}/powerline/bindings/vim" >> ~/.vimrc


# Enable Powerline on Tmux
if [ ! -f ~/.tmux.conf ]; then
    echo "# For Powerline (Added by Environment-Setup)" > ~/.tmux.conf
else
    echo "" >> ~/.tmux.conf
    echo "# For Powerline (Added by Environment-Setup)" >> ~/.tmux.conf
fi
echo "run-shell \"powerline-daemon -q\"" >> ~/.tmux.conf
echo "source ${LOCATION}/powerline/bindings/tmux/powerline.conf" >> ~/.tmux.conf
