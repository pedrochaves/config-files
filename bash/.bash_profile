# Global variables
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export EDITOR=/usr/bin/vim

# Aliases section
alias ll='ls -lha'

# Colors definition
BLACK="\e[30m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
WHITE="\e[37m"
END_COLOR="\e[0m"

# Bash file that defines the function to verify a git branch directory
function parse_git() {
  local DIRTY STATUS CUR_BRANCH
  
  STATUS=$(git status --porcelain 2>/dev/null)
  CUR_BRANCH=$(git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* //')

  [ $? -eq 128 ] && return
  [ -z "$(echo "$STATUS" | grep -e '^ M')"    ] || DIRTY="*"
  [ -z "$(echo "$STATUS" | grep -e '^[MDA]')" ] || DIRTY="${DIRTY}+"
  [ -z "$(git stash list 2>/dev/null)" ]        || DIRTY="${DIRTY}^"
  
  #echo $CUR_BRANCH
}

# Changes the default interactive prompt
PS1="\[$GREEN\]\u@\h\[$END_COLOR\]:\w \[$CYAN\]$(parse_git)\[$END_COLOR\]\n$ "
