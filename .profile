# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:/home/tonko/.gem/ruby/1.9.1/bin:$PATH"
fi

alias ls='ls --color=auto -F --group-directories-first'
alias a='ls -A'
alias ll='ls -lh'
alias la='a -lh'

eval `keychain --eval --agents ssh id_dsa`
alias bob="php artisan bob::build"
export PATH="$PATH:/home/tonko/.gem/ruby/1.9.1/bin"

export svn_url="svn+ssh://svn.buyways.nl/export/svn"
