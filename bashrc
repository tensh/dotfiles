#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Allow any character to send XON to prevent ^S-freeze (screen fix)
stty ixany

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
#PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '

# extend path to contain own binaries
export PATH="$PATH:$HOME/bin"

# custom aliases
alias scx='screen -x'
alias scdr='screen -dr'
alias irc='screen -x irc'
alias f='find . -iname'
alias fe='find . -name'

# Pipe code/text that you want to upload to this command (pastebin)
alias sprunge='curl -F '\''sprunge=<-'\'' http://sprunge.us'
