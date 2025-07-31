#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias pac='sudo pacman'
alias dots='git --git-dir=$HOME/.dots.git/ --work-tree=$HOME'

# Git branch function
parse_git_branch() {
  git rev-parse --is-inside-work-tree &> /dev/null || return
  git symbolic-ref --short HEAD 2>/dev/null || git describe --tags --exact-match 2>/dev/null
}

# Color codes
RED="\[\033[1;31m\]"
GREEN="\[\033[1;32m\]"
YELLOW="\[\033[1;33m\]"
BLUE="\[\033[1;34m\]"
MAGENTA="\[\033[1;35m\]"
CYAN="\[\033[1;36m\]"
WHITE="\[\033[1;37m\]"
RESET="\[\033[0m\]"

# Fancy prompt
PS1="${BLUE}╭─${CYAN}\u${WHITE}@${MAGENTA}\h ${YELLOW}\w ${RED}\$(parse_git_branch)${RESET}\n${BLUE}╰─${GREEN} ${RESET}"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DISPLAY=:0
export XDG_CURRENT_DESKTOP=Awesome
export XDG_SESSION_TYPE=x11
export PATH="$PATH:/opt/nvim/"
