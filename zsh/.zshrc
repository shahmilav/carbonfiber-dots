# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export DOTDIR=~/.config
export ZDOTDIR=~/.config/zsh
export DEVDIR=~/dev

source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/plugins.zsh
source $ZDOTDIR/functions.zsh
source $ZDOTDIR/defaults.zsh
source $ZDOTDIR/iterm.zsh
source $ZDOTDIR/path.zsh

export HOMEBREW_NO_ENV_HINTS

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
test -r ~/.dir_colors && eval $(gdircolors ~/.dir_colors)

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ ! -f $ZDOTDIR/.p10k.zsh ]] || source $ZDOTDIR/.p10k.zsh

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.2
