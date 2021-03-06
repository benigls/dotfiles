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

# quickly cd to repos
function cdr() {
    if __check_args $@ ; then
        if [ -d $REPO_FOLDER/$1 ]; then
            cd $REPO_FOLDER/$1
        else
            cd $REPO_FOLDER
            echo "You are redirected to $REPO_FOLDER"
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


function theme() {
    if [ "$#" -gt 1 ]; then
        echo "Too many theme name. It requires only 1."
    elif [ ! "$@" ]; then
        echo "You didn't pass the theme name."
    else
        # @TODO: add validation if theme exist
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
