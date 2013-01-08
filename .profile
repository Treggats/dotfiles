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
  export PATH=$PATH:$HOME/bin
fi

if [ -d "/opt/idea/bin" ] ; then
  export PATH=$PATH:/opt/idea/bin
fi

if [ -d "/opt/java/bin" ] ; then
  export PATH=$PATH:/opt/java/bin
fi

if [ -d "$HOME/.gem/ruby/1.9.1/bin" ] ; then
  export PATH=$PATH:$HOME/.gem/ruby/1.9.1/bin
fi

if [ -d "/opt/nginx" ] ; then
  export PATH=$PATH:/opt/nginx/sbin
fi

if [ -d "$HOME/Downloads/apache-nutch-1.6" ] ; then
  export NUTCH_RUNTIME_HOME=$HOME/Downloads/apache-nutch-1.6
fi

if [ -d "$HOME/Downloads/apache-solr-4.0.0" ] ; then
  export APACHE_SOLR_HOME=$HOME/Downloads/apache-solr-4.0.0
fi

eval `keychain --eval --agents ssh id_dsa`

alias ls='ls --color=auto -F --group-directories-first'
alias a='ls -A'
alias ll='ls -lh'
alias la='a -lh'

pretty_cat() { pygmentize -f terminal "$1" | cat }
alias pcat=pretty_cat
pretty_less() { pygmentize -f terminal "$1" | less -R }
alias pless=pretty_less
alias gen_passwd="cat /dev/urandom| tr -dc a-zA-Z0-9 | fold -w 10| head -n 4"
