#!/opt/homebrew/bin/zsh

# enable zsh-autosuggestions -->
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080"

source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh


for f ($ZDOTDIR/plugins/**/*.zsh(N.)) . $f
