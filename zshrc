export ZSH="/home/abrabant/.oh-my-zsh"

ZSH_THEME="fletcherm"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR="vim"
export USER="abrabant"
export MAIL="abrabant@student.42.fr"

export MANPATH="$MANPATH:/usr/local/man"

alias vim="nvim"

alias mp3yt="youtube-dl --extract-audio --audio-format mp3"
