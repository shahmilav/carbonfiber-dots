### GENERAL ###
alias ip='curl -s ipinfo.io'
alias sys='btm -b'
alias sortfiles='ls -a > sortfile.txt; sort sortfile.txt; rm sortfile.txt'
alias bel='tput bel'
alias rel='source ~/.zshrc'

### LS ###
alias ls='ls -GF'
alias ll='ls -lGF'
alias la='ls -GFA'

### NAVIGATION ###
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

### CONFIGURATION ###
alias fishconf='cd ~/.config/fish/'

### GIT ###
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gs='git status'

### COMMON DIRECTORIES ###
alias jag='cd ~/dev/jaguar'
alias dev='cd ~/dev'
alias conf='cd ~/.config'

### MAVEN ###
alias mvnc='mvn clean'
alias mvncom='mvn clean compile'
alias mvnboot='mvn spring-boot:run'

### PYTHON ###
alias py='python3.10'
alias moon='python3.10 ~/dev/moon-phases/moon_phase.py'
alias picalc='python3.10 ~/dev/pi-thon-calc/calculator.py'

### HTML ###
alias tidy='tidy -m --indent yes --tidy-mark no'

### OPENING APPS ###
alias ff="open -a 'Firefox Nightly'"
alias st="open -a 'Sublime Text'"
alias gh="open -a 'GitHub Desktop'"
alias br="open -a 'Brave Browser Beta'"
alias iterm="open -a 'iTerm'"
