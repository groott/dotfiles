#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
exec fish
export LANG=en_US.UTF-8
alias wpa_gui="sudo wpa_gui"
alias checkupdates="sudo checkupdates"

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh
alias config='/usr/bin/git --git-dir=/home/maciek/.dotfiles/ --work-tree=/home/maciek'
