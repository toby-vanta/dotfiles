export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8
export EDITOR='vim'

ZSH_THEME="toby"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias vi='vim'
alias obup='yarn post-pull && make dev-start-web'

