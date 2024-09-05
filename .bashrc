#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -lpa --color=auto'
alias grep='grep --color=auto'
alias nano='nano -l'
#alias rofi_cus='rofi -show drun -config ~/dotfiles/rofi/config.rasi'
#alias waybar= ''
PS1='[\u@\h \W]\$ '

export OLLAMA_MODELS=/home/inge/Data/Models/Ollama
export XDG_CURRENT_DESKTOP=Hyprland
#export CUDA_VISIBLE_DEVICES=0

eval "$(starship init bash)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/inge/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/inge/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/inge/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/inge/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

