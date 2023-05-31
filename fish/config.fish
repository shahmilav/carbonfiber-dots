if status is-interactive
  echo Hello Milav\n | lolcat
end

set -U fish_greeting ""

fish_add_path /opt/homebrew/bin 
fish_add_path /Users/milav/bin
fish_add_path ~/Library/Application\ Support/JetBrains/Toolbox/scripts/
fish_add_path ~/.cargo/bin

source ~/.config/fish/aliases.fish

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

## HYDRO PROMPT CUSTOMIZATION ##

function fish_right_prompt 
end

set --global hydro_symbol_prompt "❯"
set --global hydro_symbol_git_dirty "*"

set --global hydro_color_pwd blue
set --global hydro_color_git green
set --global hydro_color_error red
set --global hydro_color_prompt magenta
set --global hydro_color_duration yellow

