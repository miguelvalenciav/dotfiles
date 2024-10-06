if status --is-interactive
    # Commands to run in interactive sessions can go here
end

# Launch Starship
starship init fish | source

alias ls='ls -lpA --color=auto'
alias grep='grep --color=auto'
