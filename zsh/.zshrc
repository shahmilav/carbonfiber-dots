#               _
#              | |
#     ____ ___ | |__   _ __  ___
#    |_  // __|| '_ \ | '__|/ __|
#  _  / / \__ \| | | || |  | (__
# (_)/___||___/|_| |_||_|   \___|

# ---< GREETING >---

# The startup function

function greet() {
  echo "Hello, $1.\n" | lolcat
  return 0
}
# run the function
greet "$USER"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
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

# iTerm2 Shell Integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# ---< SOURCE POWERELEVEL10K CONFIGURATION >---
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
