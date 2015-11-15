# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# virtualenvwrapper settings
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV=`which virtualenv-3.4`
export VIRTUALENV_PYTHON=`which python3`
export VIRTUALENVWRAPPER_PYTHON=`which python3`
source /usr/local/bin/virtualenvwrapper.sh

PROMPT=$'%n at %m %~\n➔ '

# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_all_dups
setopt hist_ignore_space

###  Aliases ###

# reload zsh config
alias reload!="source ~/.zshrc"

# File system
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias l="ls -la"
alias ll="ls -l"
alias rmf="rm -rf"


# tmux
alias tmux='tmux -2'
alias ta='tmux attach'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Anaconda
export PATH=/home/vagrant/anaconda3/bin:$PATH

export VAGRANT_FOLDER="$HOME/Code/Vagrant/"

# Run a vagrant machine
vag() {
    vagrant_path="$VAGRANT_FOLDER/$1"

    if [ "$#" -gt 1 ]; then
        echo "Too many machine name. It requires only 1."
    elif [ ! "$@" ]; then
        echo "You didn't pass the machine name."
    else
        if [ -d $vagrant_path ]; then
            cd $vagrant_path
            vagrant up && vagrant ssh
        else
            # TODO: Pretify the message.
            echo "$1 doesn't exist.\n"
            echo "Here's the list of available machines."
            ls $VAGRANT_FOLDER
        fi
    fi

    unset vagrant_path
}

# Create a new directorty and enter it.
md() {
    if [ "$#" -gt 1 ]; then
        echo "Too many directory name. It requires only 1."
    elif [ ! "$@" ]; then
        echo "You didn't pass the directory name."
    else
        mkdir -p "$1" && cd "$1"
    fi
}
