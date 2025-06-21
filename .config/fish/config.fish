# Theme
fish_config theme choose "Catppuccin Mocha"

. ~/.config/fish/aliases.fish

# Turn off the greeting
set -U fish_greeting ""

# Starship 
starship init fish | source

# Created by `pipx` on 2025-06-20 03:05:00
set PATH $PATH /home/hacky/.local/bin
