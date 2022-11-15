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
fish_add_path $HOME/.config/nvim/bin
fish_add_path $HOME/.local/bin

##########################################

abbr --add bye exit
alias ip="curl ifconfig.me"

alias dev="cd ~/dev"
alias jag="cd ~/dev/jaguar"
alias blog="cd ~/dev/blog"
alias conf="cd ~/.config"

abbr --add g git
abbr --add ga git add
abbr --add gc git commit
abbr --add gd git diff
abbr --add gs git status

abbr --add  .. cd ..
abbr --add ... cd ../..
abbr --add .... cd ../../..
abbr --add ..... cd ../../../..

abbr --add mvnc mvn clean
abbr --add mvncom mvn compile
abbr --add mvnboot mvn spring-boot:run

alias tidy="tidy -m --indent yes --tidy-mark no"

abbr --add py python3.10
alias moon="python3.10 ~/dev/moon_phases/moon_phase.py"
alias picalc="python3.10  ~/dev/pi-thon-calc/calculator.py" 

alias stp="open -a 'Safari Technology Preview'" 

########################################## 

function dark -d "Toggle macOS appearance" 
    osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to not dark mode'; 
end 

function take -d "Create a directory and set CWD" 
    command mkdir $argv 
    if test $status = 0
        switch $argv[(count $argv)]
            case '-*'

            case '*'
            cd $argv[(count $argv)]
            return
        end
    end
end

