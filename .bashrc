#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### Aliases
alias cp='cp -v'
alias ls='ls -h --color=auto'
alias pacls='sudo pacman -Qet'
alias pacup='sudo pacman -Syu'
alias pacins='sudo pacman -S'
alias pacrm='sudo pacman -Rs'

### Environment Variables
export EDITOR=vim

#PS1='\[\e[31m\]\u\[\e[0m\]@\h \W \$ '
PS1=' \W > '

# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	# Sway
	exec sway
	exit 0
fi
