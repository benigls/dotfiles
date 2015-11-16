# Run a vagrant machine
function vag() {
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
            ls -1 $VAGRANT_FOLDER
        fi
    fi

    unset vagrant_path
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
