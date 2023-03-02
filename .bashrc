#!/bin/bash
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Custom prompt 
PS1='\[\e[0;1;97m\]\H\[\e[0;1;97m\]@\[\e[0;1;97m\]\u\[\e[0;1;97m\][\[\e[0;1;4;97m\]\W\[\e[0;1;97m\]]\[\e[0m\]:\[\e[0m\]:\[\e[0;1;91m\](\[\e[0;1;91m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2)\[\e[0;1;91m\])\[\e[0m\]: \[\e[0m\]'

# Ignore case-sensitive
bind -s 'set completion-ignore-case on'

# Alias section
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias lal='ls -al --color=auto'
alias grep='grep --color=auto'
