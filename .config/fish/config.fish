# Theme
fish_config theme choose "Catppuccin Mocha"

. ~/.config/fish/aliases.fish

# Turn off the greeting
set -U fish_greeting ""

# Starship 
starship init fish | source
