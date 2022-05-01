#!/opt/homebrew/bin/zsh

function greet() {
  echo "Hi $1.\n" | lolcat
  return 0
}

function goapt() {
  brew update; brew upgrade; brew cleanup >/dev/null;
}

function acp() {
  git add .
  git commit -m "$1"
  git push
}

function exists() {
  if [ -d "$1" ]; then 
    if [ -L "$1" ]; then
      echo "Directory "$1" exists and is a symbolic link."
      return 0
    fi 

    echo "$1 is a directory."
    return 0
  fi

  if [ -e "$1" ]; then 

    if [ -L "$1" ]; then
      echo "File "$1" exists and is a symbolic link."
      return 0
    else 
      echo "File "$1" exists."
      return 0
    fi

  fi


  echo "$1 does not exist."
  return 1
}

256color() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

take() {
  mkdir "$1";
  cd "$1";
  return 0;
}

todo() {
  echo "* [ ] $1" >> ~/TODO.md
}

colors() {

  T='gYw'

  echo -e "\n                 40m     41m     42m     43m\
    44m     45m     46m     47m";

  for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
    '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
    '  36m' '1;36m' '  37m' '1;37m';
    do FG=${FGs// /}
      echo -en " $FGs \033[$FG  $T  "
      for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
      do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
      done
      echo;
    done
    echo
  }

  function color() {
    kotlinc $DEVDIR/color/src/*.kt;
    kotlin $DEVDIR/color/src/MainKt;
  }
