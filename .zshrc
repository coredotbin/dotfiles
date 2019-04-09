autoload -U colors && colors
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

# Source this for dynamic window title
source ~/.oh-my-zsh/lib/termsupport.zsh

### Environment Variables
export SYSTEMD_PAGER=less
export CHROOT=$HOME/chroot
export EDITOR=/usr/bin/vim
export PAGER=less
# Uncomment this to enable a WIP wallpaper setting script
export NNN_SCRIPT=$HOME/.scripts/set-wallpaper

# Set the prompt style
PS1=' %F{magenta}%1~ >%f '

### Aliases
# General
source ~/.config/aliases.sh
# Switch audio profiles
alias audio-hdmi='pacmd set-card-profile 0 output:hdmi-stereo-extra1'
alias audio-laptop='pacmd set-card-profile 0 output:analog-stereo+input:analog-stereo'
alias audio-headphones='pacmd set-card-profile 0 output:analog-surround-40'

# Start sway if running in tty1
if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
	exit 0
fi
