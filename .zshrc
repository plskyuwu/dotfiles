alias :Q=exit
alias :q=exit

alias ls="ls --color"
alias grep="grep --color"
alias less="less --use-color"

alias vim="nvim -u ~/.config/nvim/simple-init.lua"

alias school="cd ~/Projects/school"
alias projects="cd ~/Projects"
alias nvim-config="cd ~/.config/nvim/"
alias config="cd ~/.config/"

alias pro=projects
alias sch=school

autoload -Uz compinit promptinit
compinit
promptinit

prompt fade magenta

export MANPAGER="less -sR --use-color"
export EDITOR=nvim
export VISUAL=$EDITOR

# Run command on startup
fastfetch
