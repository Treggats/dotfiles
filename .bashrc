#
# ~/.bashrc
#
export TERM=rxvt
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
eval `keychain --eval --agents ssh id_dsa`

# write a function to compute the current git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# set the PS1 variable
# ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\]
PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$(parse_git_branch)\[\e[0;0m\]\$\[\033[00m\] "

# on any regular directory it will output:
# /path/to/directory$ [PROMPT]

# on a git repository it will output:
# /path/to/directory(branch_name_in_yellow)$ [PROMPT]


