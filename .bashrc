#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias pac='sudo pacman'
alias dots='git --git-dir=$HOME/.dots.git/ --work-tree=$HOME'
PS1='[\u@\h \W]\$ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DISPLAY=:0
export XDG_CURRENT_DESKTOP=Awesome
export XDG_SESSION_TYPE=x11
export PATH="$PATH:/opt/nvim/"
