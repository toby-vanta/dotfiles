export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8
export EDITOR='vim'
export PAGER='less -F'
export DISABLE_V8_COMPILE_CACHE=1

ZSH_THEME="toby"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias vi='vim'
alias obup='git pp && yarn pp'
# ripgrep is installed by default, so just alias The Silver Searcher to that so
# I don't have to relearn how to type...
alias ag='rg'

