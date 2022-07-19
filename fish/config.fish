if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

### PATH ###
set default_path /usr/bin /usr/sbin /bin /sbin
set homebrew /usr/local/bin /usr/local/sbin /opt/homebrew/bin
set maven /Users/milavshah/libs/apache-maven-3.6.3/bin
set python /Library/Frameworks/Python.framework/Versions/3.10/bin
set cargo /Users/milavshah/.cargo/bin/
set macports /opt/local/bin:/opt/local/sbin
set doom /Users/milavshah/.emacs.d/doom/bin
set emacs /Applications/Emacs.app/Contents/MacOS/bin
set -gx PATH $default_path $homebrew $maven $python $cargo $macports $doom emacs



source ~/.config/fish/aliases.fish
source ~/.config/fish/prompt.fish
source ~/.config/fish/functions.fish

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

