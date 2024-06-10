if status is-interactive
echo welcome, $USER \n
end

#set -U fish_greeting ""
set -U EDITOR nvim

fish_add_path /opt/homebrew/bin 
fish_add_path {$HOME}/bin fish_add_path {$HOME}/Library/Application\ Support/JetBrains/Toolbox/scripts/
fish_add_path {$HOME}/.cargo/bin
fish_add_path {$HOME}/.local/bin
fish_add_path {$HOME}/.fig/bin
fish_add_path {$HOME}
set GOPATH {$HOME}

source ~/.config/fish/aliases.fish

set --global hydro_symbol_prompt '%'
set --global hydro_symbol_git_dirty "*"
set --global hydro_color_pwd cyan
set --global hydro_color_git magenta
set --global hydro_color_error red
set --global hydro_color_prompt green
set --global hydro_color_duration yellow
set --global fish_prompt_pwd_dir_length 1

function font
	echo "o0O s5S 9gq z2Z !|l1Iij {([|])} .,;: ``''\""
	echo "a@#* vVuUwW \<\>;^°=-~ öÖüÜäÄßµ \/\/ -- == __"
	echo "the quick brown fox jumps over the lazy dog"
	echo "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"
	echo "0123456789 &-+@ for (int i=0; i<=j; i++) {}"
end

# Setting PATH for Python 3.12
# The original version is saved in /Users/milav/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.12/bin" "$PATH"
