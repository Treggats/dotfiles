# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tonko/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
alias ls='ls --color=auto -F'
alias a='ls -A'

export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME='candy'
source $ZSH/oh-my-zsh.sh
export PAGER='less -LR'
export EDITOR='vim'

source ~/.profile

export PROJECT_HOME=$WORKON_HOME
source /usr/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
