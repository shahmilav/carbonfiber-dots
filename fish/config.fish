if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Greeting
set -U fish_greeting Welcome to Fish.

# All Aliases, just plopped here. I have no intent to organize rn:
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias apt=brew
alias apt-find='brew ls | grep '
alias apt-get='brew install'
alias bat='bat ---theme Nord'
alias bel='tput bel'
alias conf='cd ~/.config'
alias count='ls -A | wc -l'
alias desk='cd ~/Desktop'
alias dev='cd ~/dev'
alias dots='cd ~/dotfiles'
alias downloads='cd ~/Downloads'
alias ffc='cd ~/dotfiles/firefox/chrome'
alias fsh-alias=fast-theme
alias g=git
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gjf=google-java-format
alias gp='git push'
alias imgcat=/.iterm2/imgcat
alias imgls=/.iterm2/imgls
alias ip='curl -s ipinfo.io'
alias it2api=/.iterm2/it2api
alias it2attention=/.iterm2/it2attention
alias it2check=/.iterm2/it2check
alias it2copy=/.iterm2/it2copy
alias it2dl=/.iterm2/it2dl
alias it2getvar=/.iterm2/it2getvar
alias it2git=/.iterm2/it2git
alias it2setcolor=/.iterm2/it2setcolor
alias it2setkeylabel=/.iterm2/it2setkeylabel
alias it2tip=/.iterm2/it2tip
alias it2ul=/.iterm2/it2ul
alias it2universion=/.iterm2/it2universion
alias jag='cd ~/dev/jaguar-login'
alias jv=java
alias jvc=javac
alias kt=kotlin
alias ktc=kotlinc
alias man='man -P '\''bat ---theme Nord'\'
alias mc='mvn clean'
alias mcc='mvn clean compile'
alias moon='python3.10 /dev/moon-phases/moon_phase.py'
alias mtrx='cmatrix -b'
alias mvnrn='mvn clean compile && mvn spring-boot:run'
alias nvi=nvim
alias nvimconf='cd ~/dotfiles/nvim/lua'
alias picalc='python3.10 /dev/pi-thon-calc/calculator.py'
alias pipes=pipes.sh
alias play='cd ~/dev/milav-playground'
alias pull='git pull origin'
alias push='git push origin'
alias pwer='nvim ~/.p10k.zsh'
alias py=python3.10
alias rel='source ~/.zshrc'
alias run-help=man
alias sortfiles='ls -a > file.txt; sort file.txt; rm file.txt'
alias sys='btm -b ---color nord'
alias vim='/opt/homebrew/bin/vim'
alias weather='curl '\''https://wttr.in/?F'\'
alias za='cd ~/dotfiles/zsh/aliases'
alias zrc='nvim ~/dotfiles/zsh/.zshrc'

