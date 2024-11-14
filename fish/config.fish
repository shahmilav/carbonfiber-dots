if status is-interactive

    # Commands to run in interactive sessions can go here
    echo TODO:
    ~/.config/fish/todo.fish show
    echo
end


set --global hydro_symbol_prompt λ
set fish_greeting


fish_add_path /opt/homebrew/bin




abbr .. "cd .."
abbr ... "cd ../.."
abbr .... "cd ../../.."

alias dev "cd ~/Developer"
alias todo "$HOME/.config/fish/todo.fish"

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

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

