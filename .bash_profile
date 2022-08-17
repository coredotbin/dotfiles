#
# ~/.bash_profile
#

# Add .local/bin to PATH
export PATH="$HOME/.local/bin:$PATH"

export TERM='xterm-256color'
export PS1="\t \e[1;32m\u@\h\e[0m \W \$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\e[1;35m(\1)\e[0m /')\\$ \[$(tput sgr0)\]"

# Colorize LS
export LS_OPTIONS='--color=auto'
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

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

[[ -f ~/.bashrc ]] && . ~/.bashrc

export GPG_TTY=$(tty)
