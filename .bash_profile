#
# ~/.bash_profile
#

# Source .bashrc
#[[ -f ~/.bashrc ]] && . ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Custom defaults
export PAGER='/usr/bin/less'
export SYSTEMD_PAGER='/usr/bin/less'
export EDITOR='/usr/bin/vim'

# Add .local/bin to PATH
export PATH="$PATH:$HOME/.local/bin"

export TERM='xterm-256color'
export PS1="\t \e[1;32m\u@\h\e[0m \W \$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\e[1;35m(\1)\e[0m /')\\$ \[$(tput sgr0)\]"

# Colorize LS, additional LS options
export LS_OPTIONS='--color=auto -h'
eval "$(dircolors)"
# Additional LS shortcuts
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias la='ls $LS_OPTIONS -lA'

alias rm='rm -I'
alias cp='cp -v'
alias mv='mv -vi'

# Dotfile Git storage
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# ssh-agent configuration
#export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
#export SSH_AUTH_SOCK="/run/ssh-agent.socket"
# I like this hacky setup from Jon Spriggs here - https://jon.sprig.gs/blog/post/1934
SSH_ENV="$HOME/.ssh/agent-environment"
function start_agent {
	echo "Initialising new SSH agent..."
	/usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
	chmod 600 "${SSH_ENV}"
	. "${SSH_ENV}" > /dev/null
}
# Source SSH settings, if applicable
if [ -f "${SSH_ENV}" ]; then
	. "${SSH_ENV}" > /dev/null
	ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
		start_agent;
	}
else
	start_agent;
fi

# gpg-agent configuration
export GPG_TTY=$(tty)
