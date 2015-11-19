# check args if it's only 1. 1 = error, 2 = accepted
function __check_args() {
    if [ $# -gt 1 ]; then
        echo "Too many argument. It requires only 1."
        return 1
    elif [ ! $@ ]; then
        echo "You didn't pass an argument."
        return 1
    else
        return 0
    fi

}

# cd into vm
function cdvm() {
    if __check_args $@ ; then
        if [ -d $VAGRANT_FOLDER/$1 ]; then
            cd $VAGRANT_FOLDER/$1
        else
            echo "$1 doesn't exist.\n"
            echo "Here's the list of available machines."
            llv
       fi
    fi
}

# ssh into vm
function sshvm() {
    if __check_args $@ ; then
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

# up vm
function upvm() {
    if __check_args $@ ; then
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

# halt vm
function haltvm() {
    if __check_args $@ ; then
        if [ -d $VAGRANT_FOLDER/$1 ]; then
            cd $VAGRANT_FOLDER/$1
            vagrant halt
        else
            echo "$1 doesn't exist.\n"
            echo "Here's the list of available machines."
            lsvm
        fi
    fi
}

# up and ssh into vm
function runvm() {
    if __check_args $@ ; then
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

# quickly cd to repos
function cdr() {
    if __check_args $@ ; then
        if [ -d $REPO_FOLDER/$1 ]; then
            cd $REPO_FOLDER/$1
        else
            echo "$1 doesn't exist.\n"
            echo "Here's the list of available repositories."
            llr
        fi
    fi
}

# Create a new directorty and enter it.
function md() {
    if __check_args $@ ; then
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
