abbr g  "git"
abbr ga "git add"
abbr gs "git status"
abbr gc "git commit -m"
abbr gd "git diff"
abbr gp "git push"
abbr gpl "git pull"

abbr .. "cd ../"
abbr ... "cd ../../"
abbr .... "cd ../../../"

function ds -a dir
  printf "Disk Space for $dir:\t"
  du -sh $dir | head -n1 | awk '{print $1;}'
end
