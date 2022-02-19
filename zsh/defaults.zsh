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
	
