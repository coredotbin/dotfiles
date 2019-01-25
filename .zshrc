# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' '' 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename '/home/corbin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=8192
SAVEHIST=8192
setopt autocd nomatch
unsetopt beep notify
bindkey -v
# End of lines configured by zsh-newuser-install

### Environment Variables
EDITOR=vim

#PS1='\[\e[31m\]\u\[\e[0m\]@\h \W \$ '
PS1=' %1~ > '

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
