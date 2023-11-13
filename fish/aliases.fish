abbr g  "git"
abbr ga "git add"
abbr gs "git status"
abbr gc "git commit -m"
abbr gd "git diff"
abbr gp "git push"
abbr gpl "git pull"
alias eocv "java -jar /Users/milav/dev/FTC-Workspace/ftc/EOCV-Sim-3.5.2-all.jar"

abbr .. "cd ../"
abbr ... "cd ../../"
abbr .... "cd ../../../"

alias dev "cd ~/dev"
alias prj "cd ~/dev/projects"
alias webdev "cd ~/dev/projects/webdev"
alias dots "cd ~/.config"

alias pip "pip3"

function take -a dir
  mkdir -p $dir
  cd $dir
end

alias fishconf "$EDITOR ~/.config/fish/config.fish"


# Pretty prints the disk space of the given directory
function ds -a dir
  printf "Disk Space for $(set_color -i red)$dir$(set_color normal):$(set_color -o cyan) "
  du -sh $dir | head -n1 | awk '{print $1;}'
end

function port -a PORT
  sudo lsof -i -n -P | grep TCP | grep $PORT
end

function breww 
  brew update && brew upgrade && brew cleanup && brew doctor
end
