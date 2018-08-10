#!/bin/bash

bash install_scripts/install_default_files.sh           # Adds in vimrc and tmux.conf
bash install_scripts/install_pathogen.sh                # Adds in Pathogen for Vim
bash install_scripts/install_solarized.sh               # Adds in Solarized for Vim
bash install_scripts/install_powerline.sh               # Adds in Powerline for Vim, Bash and Tmux
bash install_scripts/install_vim_auto_pairs.sh          # Adds in Auto-Pairs for Vim (paren, brace, bracket auto-insert)
bash install_scripts/install_vim_last_place.sh          # Adds in Last-Place for Vim (remember position on exit)
bash install_scripts/install_tmux_plugins.sh            # Adds in plugins for Tmux
