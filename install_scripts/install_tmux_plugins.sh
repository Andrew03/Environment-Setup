#!/bin/bash

# Installs the Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Enables Tmux Plugin Manager 
if [ ! -f ~/.tmux.conf ]; then
    echo "# For Tmux Plugin Manager (Added by Environment-Setup)" > ~/.tmux.conf
else:
    echo "" >> ~/.tmux.conf
    echo "# For Tmux Plugin Manager (Added by Environment-Setup)" >> ~/.tmux.conf
fi

echo "# List of Plugins" >> ~/.tmux.conf
echo "set -g @plugin \'tmux-plugins/tpm\'" >> ~/.tmux.conf
echo "set -g @plugin \'tmux-plugins/tmux-sensible\'" >> ~/.tmux.conf
echo "set -g @plugin \'tmux-plugins/tmux-yank\'" >> ~/.tmux.conf
echo "set -g @plugin \'seebi/tmux-colors-solarized\'" >> ~/.tmux.conf
echo "" >> ~/.tmux.conf
echo "# Enabling Solarized on Tmux" >> ~/.tmux.conf
echo "set -g @colors-solarized \'dark\'" >> ~/.tmux.conf
echo "" >> ~/.tmux.conf
echo "# Intialize Tmux Plugin Manager (keep this line at the very bottom of tmux.conf)" >> ~/.tmux.conf
echo "run source ~/.tmux.conf" >> ~/.tmux.conf
