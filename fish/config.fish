if status is-interactive
    # Commands to run in interactive sessions can go here
end

##########################################

fish_add_path /opt/homebrew/bin
fish_add_path /usr/local/bin
fish_add_path $HOME/.emacs.d/bin
fish_add_path /opt/local/bin
fish_add_path $HOME/libs/apache-maven-3.6.3/bin
fish_add_path /opt/local/sbin
fish_add_path $HOME/.local.bin

##########################################

set --global hydro_symbol_prompt    "λ"
set --global hydro_symbol_git_dirty "*"
set --global hydro_color_git        green
set --global hydro_color_pwd        blue
set --global hydro_color_prompt     blue
set --global hydro_color_duration   yellow

##########################################

alias bye="exit"
alias ip="curl ifconfig.me"

alias dev="cd ~/dev"
alias jag="cd ~/dev/jaguar"
alias blog="cd ~/dev/blog"
alias conf="cd ~/.config"

alias g="git"
alias ga="git add"
alias gc="git commit"
alias gd="git diff"
alias gs="git status"

alias ..="cd .."
alias ...="cd ..."
alias ....="cd ...."
alias .....="cd ....."

alias mvnc="mvn clean"
alias mvncom="mvn compile"
alias mvnboot="mvn spring-boot:run"

alias tidy="tidy -m --indent yes --tidy-mark no"

alias py="python3.10"
alias moon="python3.10 ~/dev/moon_phases/moon_phase.py"
alias picalc="python3.10  ~/dev/pi-thon-calc/calculator.py"

alias stp="open -a 'Safari Technology Preview'"
