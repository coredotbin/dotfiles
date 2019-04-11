# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
export SYSTEMD_PAGER=less

# User specific aliases and functions
alias cp='cp -vi'
alias mv='mv -vi'
alias rm='rm -i'
alias ls='ls -h --color=auto'

# Systemd wrapping
alias start='sudo systemctl start'
alias stop='sudo systemctl stop'
alias restart='sudo systemctl restart'
alias status='sudo systemctl status -l'

# firewall-cmd wrapping
alias fire='sudo firewall-cmd'

alias upgrade='sudo yum upgrade -y'

alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
