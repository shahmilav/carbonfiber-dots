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


