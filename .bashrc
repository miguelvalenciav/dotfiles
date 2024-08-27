#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nano='nano -l'
#alias rofi_cus='rofi -show drun -config ~/dotfiles/rofi/config.rasi'
#alias waybar= ''
PS1='[\u@\h \W]\$ '

export XDG_CURRENT_DESKTOP=Hyprland
eval "$(starship init bash)"
