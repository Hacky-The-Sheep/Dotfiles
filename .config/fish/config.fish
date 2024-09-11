. ~/.config/fish/aliases.fish

# Turn off the greeting
set -U fish_greeting ""

# Starship 
starship init fish | source
alias config='/usr/bin/git --git-dir=/home/hacky/.cfg/ --work-tree=/home/hacky'
