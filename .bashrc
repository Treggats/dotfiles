#
# ~/.bashrc
#
export TERM=rxvt
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
eval `keychain --eval --agents ssh id_dsa`
PS1='[\u@\h \W]\$ '
