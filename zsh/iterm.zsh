# --< ITERM >---
source ~/.iterm2_shell_integration.zsh

alias imgcat=/Users/milavshah/.iterm2/imgcat;
alias imgls=/Users/milavshah/.iterm2/imgls;
alias it2api=/Users/milavshah/.iterm2/it2api;
alias it2attention=/Users/milavshah/.iterm2/it2attention;
alias it2check=/Users/milavshah/.iterm2/it2check;
alias it2copy=/Users/milavshah/.iterm2/it2copy;
alias it2dl=/Users/milavshah/.iterm2/it2dl;
alias it2getvar=/Users/milavshah/.iterm2/it2getvar;
alias it2git=/Users/milavshah/.iterm2/it2git;
alias it2setcolor=/Users/milavshah/.iterm2/it2setcolor;
alias it2setkeylabel=/Users/milavshah/.iterm2/it2setkeylabel;
alias it2tip=/Users/milavshah/.iterm2/it2tip;
alias it2ul=/Users/milavshah/.iterm2/it2ul;
alias it2universion=/Users/milavshah/.iterm2/it2universion

function iterm2_print_user_vars() {
  iterm2_set_user_var gitBranch $((git branch 2> /dev/null) | grep \* | cut -c3-)
  iterm2_set_user_var home $(echo -n "$HOME")
}
