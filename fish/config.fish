if status is-interactive
end

set fish_greeting
fish_add_path /opt/homebrew/bin

abbr .. "cd .."
abbr ... "cd ../.."
abbr .... "cd ../../.."

alias dev "cd ~/Developer"
alias gitlog "git log --graph --abbrev-commit --decorate --all --date=relative"

alias rgb "~/.config/fish/rgb"

alias p pnpm

function port $argv
    sudo lsof -i :$argv
end

function brewx
    brew update
    and brew upgrade
    and brew cleanup --prune=all --scrub
end

function disk $argv
    du -sh $argv
end

# pnpm
set -gx PNPM_HOME /Users/milav/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/milav/.lmstudio/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

zoxide init fish | source
