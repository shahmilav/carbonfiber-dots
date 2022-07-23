### GENERAL ###
alias ip='curl -s ipinfo.io'
alias rel='source ~/.zshrc'

### COMMANDS ###
alias ls='ls -GF'
alias ll='ls -lGF'
alias la='ls -GFA'
alias cp="cp -v"
alias mv="mv -v"
alias mkdir="mkdir -pv"
alias rm="rm -v"

### NAVIGATION ###
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

### CONFIGURATION ###
alias zrc='$EDITOR ~/.zshrc'
alias nvimconf='cd ~/.config/nvim/lua'

### GIT ###
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gs='git status'
alias push='git push origin'
alias pull='git pull origin'

### COMMON DIRECTORIES ###
alias jag='cd ~/dev/jaguar'
alias dev='cd ~/dev'
alias conf='cd ~/.config'
alias blog='cd ~/dev/blog'

### MAVEN ###
alias mvnc='mvn clean'
alias mvncom='mvn compile'
alias mvncom='mvn clean compile'
alias mvnboot='mvn spring-boot:run'

### PYTHON ###
alias py='python3.10'
alias moon='python3.10 ~/dev/moon-phases/moon_phase.py'
alias picalc='python3.10 ~/dev/pi-thon-calc/calculator.py'
alias math='python3.10 ~/dev/pi-math/math.py'

### HTML ###
alias tidy='tidy -m --indent yes --tidy-mark no'
alias prettier='npx prettier'

### OPENING APPS ###
alias ff="open -a 'Firefox Nightly'"
alias st="open -a 'Sublime Text'"
alias gh="open -a 'GitHub Desktop'"
alias br="open -a 'Brave Browser Beta'"
alias iterm="open -a 'iTerm'"
