export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

zstyle ':omz:update' mode auto      # update automatically without asking

plugins=(git kubectl asdf helm)

source $ZSH/oh-my-zsh.sh
