#
# ~/.bash_profile
#

export TERM='xterm-256color'

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

export GPG_TTY=$(tty)

[[ -f ~/.bashrc ]] && . ~/.bashrc
