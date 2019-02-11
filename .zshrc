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
export NNN_SCRIPT="$HOME/.scripts/setwallpaper"

PS1=' %F{4}%1~ >%f '

### Aliases
# General
alias cp='cp -v'
alias ls='ls -h --color=auto'
alias enable-bl='sudo chmod 666 /sys/class/backlight/intel_backlight/brightness'
# Switch audio
alias audio-hdmi='pacmd set-card-profile 0 output:hdmi-stereo-extra1'
alias audio-laptop='pacmd set-card-profile 0 output:analog-stereo+input:analog-stereo'
# Pacman aliases
alias pacls='sudo pacman -Qet'
alias pacorphs='sudo pacman -Qdt'
alias pacupgrade='sudo pacman -Syu'
alias pacins='sudo pacman -Syu --needed'
alias pacrm='sudo pacman -Rns'
# dotfile storage method
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Start sway if running in tty1
if [ "$(tty)" = "/dev/tty1" ]; then
	# Sway
	exec sway
	exit 0
fi
