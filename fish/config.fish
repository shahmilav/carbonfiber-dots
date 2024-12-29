if status is-interactive
end

set fish_greeting

set --global hydro_symbol_prompt λ
set --global hydro_color_pwd cyan
set --global hydro_color_git magenta
set --global hydro_color_start green
set --global hydro_color_error red
set --global hydro_color_prompt green
set --global hydro_color_duration yellow

fish_add_path /opt/homebrew/bin

abbr .. "cd .."
abbr ... "cd ../.."
abbr .... "cd ../../.."

alias dev "cd ~/Developer"

function update
    brew update
    and brew upgrade
    and brew cleanup --prune=all --scrub
end

jump shell fish | source

# pnpm
set -gx PNPM_HOME /Users/milav/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
