#               _
#              | |
#     ____ ___ | |__   _ __  ___
#    |_  // __|| '_ \ | '__|/ __|
#  _  / / \__ \| | | || |  | (__
# (_)/___||___/|_| |_||_|   \___|

# ---< GREETING >---

# The startup function
function goapt() {
  brew update; brew upgrade; brew cleanup >/dev/null;
}

function greet() {
  echo "Hello, $1.\n" | lolcat
  return 0
}
# run the function
greet "$USER"

# ---< POWERLEVEL10K INSTANT PROMPT >---
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh";
fi

# ---< DIR VARIABLES >---
export DOTDIR=~/.config
export ZDOTDIR=~/.config/zsh
export DEVDIR=~/dev

# ---< SOURCE EXTERNAL CONFIGURATION FILES >---
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/plugins.zsh
source $ZDOTDIR/functions.zsh
source $ZDOTDIR/defaults.zsh
source $ZDOTDIR/iterm.zsh
source $ZDOTDIR/path.zsh

# ---< SOURCE POWERELEVEL10K CONFIGURATION >---
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

