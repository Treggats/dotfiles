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

export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME='candy'
source $ZSH/oh-my-zsh.sh
export PAGER='less -LR'
export EDITOR='vim'

source ~/.profile

source /usr/bin/virtualenvwrapper.sh
export WORKON_HOME="/home/tonko/projects"
export PROJECT_HOME=$WORKON_HOME
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true

pretty_cat() { pygmentize -f terminal "$1" | cat }
alias pcat=pretty_cat
pretty_less() { pygmentize -f terminal "$1" | less -R }
alias pless=pretty_less
