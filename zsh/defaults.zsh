# ---< NICE DEFUALTS >---
# term
export TERM="xterm-256color"
# editor
export EDITOR="nvim"
# pager
export PAGER="bat --theme Nord"
# dircolors (nord)
test -r ~/.dir_colors && eval $(gdircolors ~/.dir_colors)
# case-insensitive completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

# Colored manpages (https://www.tecmint.com/view-colored-man-pages-in-linux/ )
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
