# Check the args if it has only 1 arg.
#function __check_args(1) {
#}

# Show the list of available vm
# TODO: Pretify the message.
function lsvm() {
    ls -1 $VAGRANT_FOLDER
}

# cd to a vm
function cdvm() {
    if [ "$#" -gt 1 ]; then
        echo "Too many argument. It requires only 1."
    elif [ ! "$@" ]; then
        echo "You didn't pass an argument."
    else
        if [ -d $VAGRANT_FOLDER/$1 ]; then
            cd $VAGRANT_FOLDER/$1
        else
            echo "$1 doesn't exist.\n"
            echo "Here's the list of available machines."
            lsvm
       fi
    fi
}

# ssh into a vagrant vm
function sshvm() {
    if [ "$#" -gt 1 ]; then
        echo "Too many argument. It requires only 1."
    elif [ ! "$@" ]; then
        echo "You didn't pass an argument."
    else
        if [ -d $VAGRANT_FOLDER/$1 ]; then
            cd $VAGRANT_FOLDER/$1
            vagrant ssh
        else
            echo "$1 doesn't exist.\n"
            echo "Here's the list of available machines."
            lsvm
        fi
    fi
}

# up a vagrant vm
function upvm() {
    if [ "$#" -gt 1 ]; then
        echo "Too many argument. It requires only 1."
    elif [ ! "$@" ]; then
        echo "You didn't pass an argument."
    else
        if [ -d $VAGRANT_FOLDER/$1 ]; then
            cd $VAGRANT_FOLDER/$1
            vagrant up
        else
            echo "$1 doesn't exist.\n"
            echo "Here's the list of available machines."
            lsvm
        fi
    fi
}

# up and ssh into a vm
function runvm() {
    if [ "$#" -gt 1 ]; then
        echo "Too many argument. It requires only 1."
    elif [ ! "$@" ]; then
        echo "You didn't pass an argument."
    else
        if [ -d $VAGRANT_FOLDER/$1 ]; then
            cd $VAGRANT_FOLDER/$1
            vagrant up && vagrant ssh
        else
            echo "$1 doesn't exist.\n"
            echo "Here's the list of available machines."
            lsvm
        fi
    fi
}

# Create a new directorty and enter it.
function md() {
    if [ "$#" -gt 1 ]; then
        echo "Too many directory name. It requires only 1."
    elif [ ! "$@" ]; then
        echo "You didn't pass the directory name."
    else
        mkdir -p "$1" && cd "$1"
    fi
}

# set the background color and them
# TODO: Fix this shit
function light() {
    export BACKGROUND="light" && reload!
}

function dark() {
    export BACKGROUND="dark" && reload!
}

function theme() {
    if [ "$#" -gt 1 ]; then
        echo "Too many theme name. It requires only 1."
    elif [ ! "$@" ]; then
        echo "You didn't pass the theme name."
    else
        export THEME=$1 && reload!
    fi
}

# print available colors and their number
function colours() {
    for i in {0..255}; do
        printf "\x1b[38;5;${i}m colour${i}"
        if (( $i % 5 == 0 )); then
            printf "\n"
        else
            printf "\t"
        fi
    done
}
