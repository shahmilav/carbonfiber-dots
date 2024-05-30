if status is-interactive
end

set -U fish_greeting ""
set -U EDITOR nvim
set -U GROQ_API_KEY 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

##########
## PATH ##
##########

fish_add_path /opt/homebrew/bin 
fish_add_path {$HOME}/bin fish_add_path {$HOME}/Library/Application\ Support/JetBrains/Toolbox/scripts/
fish_add_path {$HOME}/.cargo/bin
fish_add_path {$HOME}/.local/bin
fish_add_path {$HOME}/.fig/bin
fish_add_path {$HOME}

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

set --global hydro_symbol_prompt $USER
set --global hydro_symbol_git_dirty "*"
set --global hydro_color_pwd blue
set --global hydro_color_git magenta
set --global hydro_color_error red
set --global hydro_color_prompt green
set --global hydro_color_duration yellow

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

# Setting PATH for Python 3.12
# The original version is saved in /Users/milav/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.12/bin" "$PATH"
