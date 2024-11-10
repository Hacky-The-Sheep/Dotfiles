# Aliases
alias ei exit
alias python python3
alias hx helix
alias gitui "gitui -t mocha.ron"

# General
alias zj zellij
alias screens "rm /home/hacky/Pictures/Screenshots/Screenshot* "
alias siri "screen /dev/ttyUSB0"

# Arch (btw) 󰣇
alias up "sudo pacman -Syu"
alias down "sudo pacman -Rcns"

# Pandoc 󰏚
alias pd "pandoc -f markdown-implicit_figures -t latex -o"

# ZelliJ
alias zj zellij
alias notes "zellij --layout ~/.dotfiles/layouts/notes.kdl"
alias thm "zellij --layout ~/.dotfiles/layouts/thm.kdl"

# Git 
alias ga "git add"
alias gs "git status"
alias gc "git commit -m"

# YoutubeDL 󰗃
alias yty "yt-dlp -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' "
alias ytu "yt-dlp -o '~/MyVideos/%(playlist)s/%(chapter_number)s - %(chapter)s/%(title)s.%(ext)s'"
alias ydl "yt-dlp --prefer-ffmpeg --merge-output-format mkv "
alias ymp4 "yt-dlp --prefer-ffmpeg --merge-output-format mp4 "
alias ymp3 "yt-dlp --extract-audio --audio-format mp3 "
alias ls "exa --color --icons"
alias sls "exa -a --color --icons"
