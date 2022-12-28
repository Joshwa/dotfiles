# Created by newuser for 5.8

export PATH="$HOME/.emacs.d/bin:$PATH"
export HISTFILE=/home/josh/.zsh-history
export HISTSIZE=1000000

# enable autocomplete
autoload -Uz compinit
compinit
_comp_options+=(globdots)

# colorful commands
alias ls='ls --color'
alias dir='dir --color'
alias vdir='vdir --color'
alias grep='grep --color'
alias fgrep='fgrep color'
alias egrep='egrep --color'

# prompt style
autoload -Uz promptinit
promptinit
prompt gentoo

# switch audio devices. This is lazy. write a script
alias headphones="pacmd set-default-sink 2 && notify-send 'Headhones are now the default output'"
alias speakers="pacmd set-default-sink 3 && notify-send 'Speakers are now the default output'"

# plex commands

alias plexon="sudo rc-config start plex-media-server"
alias plexoff="sudo rc-config stop plex-media-server"
alias config='/usr/bin/git --git-dir=/home/josh/dotfiles/ --work-tree=/home/josh'
