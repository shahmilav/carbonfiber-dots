#!/bin/zsh

# HEAVILY ADAPTED FROM www.joshdick.net/2017/06/08/my_git_prompt_for_zsh_revisited.html

setopt prompt_subst
autoload -U colors && colors # Enable colors in prompt

# Echoes information about Git repository status when inside a Git repository
git_info() {

  # Exit if not inside a Git repository
  ! git rev-parse --is-inside-work-tree > /dev/null 2>&1 && return

  # Git branch/tag, or name-rev if on detached head
  local GIT_LOCATION=${$(git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD)#(refs/heads/|tags/)}

  local AHEAD="%{$fg[blue]%}%B⇡%b$NUM%{$reset_color%}"
  local BEHIND="%{$fg[blue]%}%B⇣%bNUM%{$reset_color%}"
  local MERGING="%{$fg[208]%}(MERGING)%{$reset_color%}"
  local UNTRACKED="%{$fg[red]%}%B?%b%{$reset_color%}"
  local MODIFIED="%{$fg[red]%}%B!%b%{$reset_color%}"
  local STAGED="%{$fg[green]%}%B+%b%{$reset_color%}"

  local -a DIVERGENCES
  local -a FLAGS

  local NUM_AHEAD="$(git log --oneline @{u}.. 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_AHEAD" -gt 0 ]; then
    DIVERGENCES+=( "${AHEAD//NUM/$NUM_AHEAD}" )
  fi

  local NUM_BEHIND="$(git log --oneline ..@{u} 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_BEHIND" -gt 0 ]; then
    DIVERGENCES+=( "${BEHIND//NUM/$NUM_BEHIND}" )
  fi

  local GIT_DIR="$(git rev-parse --git-dir 2> /dev/null)"
  if [ -n $GIT_DIR ] && test -r $GIT_DIR/MERGE_HEAD; then
    FLAGS+=( "$MERGING" )
  fi

  if [[ -n $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
    FLAGS+=( "$UNTRACKED" )
  fi

  if ! git diff --quiet 2> /dev/null; then
    FLAGS+=( "$MODIFIED" )
  fi

  if ! git diff --cached --quiet 2> /dev/null; then
    FLAGS+=( "$STAGED" )
  fi

  local -a GIT_INFO
  [ -n "$GIT_STATUS" ] && GIT_INFO+=( "$GIT_STATUS" )
  [[ ${#DIVERGENCES[@]} -ne 0 ]] && GIT_INFO+=( "${(j::)DIVERGENCES}" )
  [[ ${#FLAGS[@]} -ne 0 ]] && GIT_INFO+=( "${(j::)FLAGS}" )
  GIT_INFO+=("%{$fg[magenta]%}($GIT_LOCATION)%{$reset_color%}" )
  echo "${(j: :)GIT_INFO}"
}

# Use λ as the non-root prompt character; # for root
# Change the prompt character color if the last command had a nonzero exit code

PROMPT=$'\n'
PROMPT+='%{$fg[cyan]%}%~ '
PROMPT+='${reset_color%}%{$fg[magenta]%}$(git_info)'
PROMPT+=$'\n'
PROMPT+='%(?.%{$fg[green]%}.%{$fg[red]%})%(!.# .λ%{$reset_color%} '

