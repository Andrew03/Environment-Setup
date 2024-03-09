#!/bin/bash

# Adds aliases to bash file for usage

mkdir ~/.andrew
if test -f ~/.andrew/aliases.sh; then
    echo "" >> ~/.andrew/aliases.sh
else
    touch ~/.andrew/aliases.sh
echo "Aliases Added by Environment-Setup" > ~/.andrew/aliases.sh
cat default_configs/aliases.sh >> ~/.andrew/aliases.sh

echo "source ~/.andrew/aliases.sh" >> ~/.bashrc