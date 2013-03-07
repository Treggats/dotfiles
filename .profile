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

if [ -d "$(ruby -rubygems -e "puts Gem.user_dir")/bin" ] ; then
  export PATH=$PATH:$(ruby -rubygems -e "puts Gem.user_dir")/bin
fi

if [ -d "/opt/nginx" ] ; then
  export PATH=$PATH:/opt/nginx/sbin
fi

if [ -d "/opt/hadoop-1.0.4" ] ; then
  export HADOOP_HOME=/opt/hadoop-1.0.4
fi

if [ -d "/opt/apache-nutch-1.6" ] ; then
  export NUTCH_RUNTIME_HOME=/opt/apache-nutch-1.6
fi

if [ -d "/opt/apache-solr-4.0.0" ] ; then
  export SOLR4_HOME=/opt/apache-solr-4.0.0
fi
if [ -d "/opt/apache-solr-3.6.2" ] ; then
  export SOLR3_HOME=/opt/apache-solr-3.6.2
fi


eval `keychain --eval --agents gpg,ssh id_dsa`

# set vim keybinding
set -o vi

alias ls='ls --color=auto -F --group-directories-first'
alias a='ls -A'
alias ll='ls -lh'
alias la='a -lh'

pretty_cat() { pygmentize -f terminal "$1" | cat }
alias pcat=pretty_cat
pretty_less() { pygmentize -f terminal "$1" | less -R }
alias pless=pretty_less
alias gen_passwd="cat /dev/urandom| tr -dc a-zA-Z0-9 | fold -w 10| head -n 4"
