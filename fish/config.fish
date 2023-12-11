if status is-interactive
  cl
end

set -U fish_greeting ""
set -U EDITOR nvim

##########
## PATH ##
##########

fish_add_path /opt/homebrew/bin 
fish_add_path {$HOME}/bin fish_add_path {$HOME}/Library/Application\ Support/JetBrains/Toolbox/scripts/
fish_add_path {$HOME}/.cargo/bin
fish_add_path {$HOME}/.local/bin
fish_add_path {$HOME}/.fig/bin

set GOPATH {$HOME}

#############
## ALIASES ##
#############

source ~/.config/fish/aliases.fish

###############################
## ITERM2  SHELL INTEGRATION ##
###############################

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

function ab $color
  echo -n $color | nc -4u -w0 localhost 1738
end

#################
## FISH PROMPT ##
#################

set --global hydro_symbol_prompt "λ"
set --global hydro_symbol_git_dirty "*"

set --global hydro_color_pwd blue
set --global hydro_color_git green
set --global hydro_color_error red
set --global hydro_color_prompt magenta
set --global hydro_color_duration yellow

set --global lucid_prompt_symbol ">>>"
set --global lucid_cwd_color blue
set --global lucid_git_color green
set --global lucid_prompt_error_color red
set --global lucid_prompt_symbol_color magenta
set --global lucid_dirty_indicator "*"
set --global lucid_prompt_symbol_error "!!!"
set --global lucid_prompt_symbol_error_color red

set --global tide_character_icon "λ"
set --global tide_pwd_color_truncated_dirs blue

function @@@
  exit
end

function font
  echo "o0O s5S 9gq z2Z !|l1Iij {([|])} .,;: ``''\""
  echo "a@#* vVuUwW \<\>;^°=-~ öÖüÜäÄßµ \/\/ -- == __"
  echo "the quick brown fox jumps over the lazy dog"
  echo "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"
  echo "0123456789 &-+@ for (int i=0; i<=j; i++) {}"
end



function fh -a arg
  curl -s "https://finnhub.io/api/v1/quote?symbol="$arg"&token="$FINNHUB_KEY | jq --color-output .
end

export ALPHAVANTAGE_API_KEY=HORXASRHL0NLNH1N
