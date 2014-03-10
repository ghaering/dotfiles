#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export PATH=$PATH:~/bin

export EDITOR=vim
export PYTHONSTARTUP=$HOME/.env.py
eval `keychain --eval --agents ssh id_rsa`
