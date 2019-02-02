# autoload -U colors 
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' '' 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename '/home/corbin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zhistory
HISTSIZE=8192
SAVEHIST=8192
setopt autocd nomatch
unsetopt beep notify
bindkey -v # vi-like keybindings
# End of lines configured by zsh-newuser-install

source ~/.oh-my-zsh/lib/termsupport.zsh

### Environment Variables
export CHROOT=$HOME/chroot
export EDITOR=vim

PS1=' %F{4}%1~ >%f '

#### Aliases
alias cp='cp -v'
alias ls='ls -h --color=auto'
alias pacls='sudo pacman -Qet'
alias pacup='sudo pacman -Syu'
alias pacins='sudo pacman -Syu --needed'
alias pacrm='sudo pacman -Rsn'
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	# Sway
	exec sway
	exit 0
fi
