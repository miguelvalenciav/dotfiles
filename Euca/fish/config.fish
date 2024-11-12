fastfetch

if status --is-interactive
    # Commands to run in interactive sessions can go here
end

# Launch Starship
starship init fish | source

alias ls='ls -lpA --color=auto'
alias grep='grep --color=auto'

set -Ux XDG_CONFIG_HOME $HOME/.config
set -g fish_greeting ''

function __fish_conda_set_vars --on-event conda-env-changed
    if conda info --envs | grep "dbt" > /dev/null
        set -x DBT_USER "inge"
    end
end


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/inge/miniconda3/bin/conda
    eval /home/inge/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/inge/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/inge/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/inge/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

powerline-daemon -q
set fish_right_prompt __powerline_prompt
