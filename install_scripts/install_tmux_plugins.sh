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
echo "set -g @plugin 'tmux-plugins/tpm'" >> ~/.tmux.conf
echo "set -g @plugin 'tmux-plugins/tmux-sensible'" >> ~/.tmux.conf
echo "set -g @plugin 'tmux-plugins/tmux-yank'" >> ~/.tmux.conf
echo "set -g @plugin 'jimeh/tmux-themepack'" >> ~/.tmux.conf
# echo "set -g @plugin 'seebi/tmux-colors-solarized'" >> ~/.tmux.conf

# Setting Yank Bindings Theme
echo "" >> ~/.tmux.conf
echo "# Setting Yank Bindings on Tmux" >> ~/.tmux.conf
echo "bind s copy-mode" >> ~/.tmux.conf
echo "bind p paste-buffer" >> ~/.tmux.conf

# Setting Tmux Theme
echo "" >> ~/.tmux.conf
echo "# Setting Theme on Tmux" >> ~/.tmux.conf
echo "set -g @themepack 'double/cyan'" >> ~/.tmux.conf

# Allowing Solarized to run on Tmux
# echo "" >> ~/.tmux.conf
# echo "# Enabling Solarized on Tmux" >> ~/.tmux.conf
# echo "set -g @colors-solarized 'dark'" >> ~/.tmux.conf

echo "" >> ~/.tmux.conf
echo "# Intialize Tmux Plugin Manager (keep this line at the very bottom of tmux.conf)" >> ~/.tmux.conf
echo "run ~/.tmux/plugins/tpm/tpm" >> ~/.tmux.conf
