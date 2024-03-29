#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### Environment Variables
export PATH=$PATH:$HOME/bin
export SYSTEMD_PAGER=less
export CHROOT=$HOME/chroot
export EDITOR=/usr/bin/vim
export PAGER=less

### aliases
alias cp='cp -v'
alias mv='mv -i'
alias rm='rm -i'
alias ls='ls -h --color=auto'
alias df='df -H'
# dotfile storage method. See README.md for more
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Set the prompt style
PS1='\[\033[35m\]\W >\e[m '

# Start sway if running in tty1
if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
	#exit 0
fi


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
