if status is-interactive
    # Commands to run in interactive sessions can go here
end


fish_add_path /opt/lcal/bin /opt/local/sbin/ /usr/local/bin /usr/bin /bin /sbin /usr/sbin

fish_add_path /Library/Frameworks/Python.framework/Versions/3.10/bin
fish_add_path /Users/milav/torch/install/bin

fish_add_path /opt/homebrew/bin/ /opt/homebrew/sbin/
fish_add_path /Users/milav/.cargo/bin

fish_add_path /Users/milav/bin

fish_add_path /Users/milav/Library/Application Support/JetBrains/Toolbox/scripts

fish_add_path /Applications/iTerm.app/Contents/Resources/utilities 


# prompt

set --global hydro_symbol_prompt "λ"
