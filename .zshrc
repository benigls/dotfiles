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

#zsh
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias ll='ls -la'

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

# run a vagrant machine
vag() {
    vagrant_path="$VAGRANT_FOLDER/$1"

    # TODO: Check the passed args

    if [ -d $vagrant_path ]; then
        cd $vagrant_path
        vagrant up && vagrant ssh
    else
        echo "$1 doesn't exist."
        echo "Here's the list of available machines."
        ls $VAGRANT_FOLDER
    fi

    unset vagrant_path
}
