### GENERAL ###
alias ip='curl -s ipinfo.io'
alias sys='btm -b'
alias sortfiles='ls -a > sortfile.txt; sort sortfile.txt; rm sortfile.txt'
abbr -a -g bel tput bel
alias rel='source ~/.config/fish/config.fish'

### CONFIGURATION ###
alias fishconf='cd ~/.config/fish/'

### GIT ###
abbr -a -g g git
abbr -a -g ga git add
abbr -a -g gc git commit
abbr -a -g gd git diff
abbr -a -g gs git status

### COMMON DIRECTORIES ###
alias jag='cd ~/dev/jaguar'
alias dev='cd ~/dev'
alias conf='cd ~/.config'

### MAVEN ###
abbr -a -g mvnc mvn clean
abbr -a -g mvncom mvn clean compile
abbr -a -g mvnboot mvn spring-boot:run

### PYTHON ###
abbr -a py python3.10
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
