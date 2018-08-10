#!/bin/bash

# Install Powerline
pip install powerline-status

# Find Powerline Root Directory
pip show powerline-status > /tmp/powerline_location.txt
LOCATION_STRING=`sed '8q;d' /tmp/powerline_location.txt`
LOCATION_ARRAY=($LOCATION_STRING)
LOCATION=${LOCATION_ARRAY[1]}

# Enable Powerline on Bash
echo "" >> ~/.bashrc
echo "# Powerline" >> ~/.bashrc
echo "powerline-daemon -q" >> ~/.bashrc
echo "POWERLINE_BASH_CONTINUATION=1" >> ~/.bashrc
echo "POWERLINE_BASH_SELECT=1" >> ~/.bashrc
echo ". ${LOCATION}/powerline/bindings/bash/powerline.sh" >> ~/.bashrc
