# Reload zsh config
alias reload!="source ~/.zshrc"

# File system
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias l="ls -la"
alias ll="ls -l"
alias llr="ls -1 $REPO_FOLDER"
alias llv="ls -1 $VAGRANT_FOLDER"

alias rmf="rm -rf"

# apt-get
alias ins="sudo apt-get -y install"
alias rem="sudo apt-get remove --purge"

alias upd="sudo apt-get -y update"
alias upg="sudo apt-get -y upgrade"
alias up="sudo apt-get -y update && sudo apt-get -y upgrade"

alias v="vim"

# docker
alias dc="docker-compose"
