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

alias srczsh="source ~/.zshrc"
alias edzsh="${EDITOR} ~/.zshrc"

alias pro=projects
alias sch=school

autoload -Uz compinit
compinit

PS1="%F{magenta}%B%K{magenta}█▓▒░%F{white}%K{magenta}%B%n@%m%b%F{magenta}%K{black}█▓▒░%F{white}%K{black}%B %D{%a %b %d} %D{%H:%M:%S} 
%{%}%F{magenta}%K{black}%B%~/%b%k%f "

export MANPAGER="less -sR --use-color"
export EDITOR=nvim
export VISUAL=$EDITOR

setopt autocd

# macOS
if [[ $(uname) = "Darwin" ]]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

  brew()
  {
    case "$1" in
        -S)
            command brew install "${@:2}"
            ;;

        -Ss)
            command brew search "${@:2}"
            ;;

        -Sy | -Syy)
            command brew update
            ;;

        -Syu | -Syyu)
            command brew upgrade --greedy && brew install "${@:2}"
            ;;

        -R)
            command brew uninstall "${@:2}"
            ;;

        *)
            command brew "$@"
            ;;
    esac
  }
fi

# Run command on startup
fastfetch
