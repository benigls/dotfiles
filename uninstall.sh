#!/bin/bash

echo "Uninstalling dotfiles..."

echo "Removing symlinks."
linkables=$( ls -1 -d **/*.symlink )

for file in $linkables ; do
    target="$HOME/.$( basename $file ".symlink" )"
    rm -rf $target
done

echo "Removing .config files."
configs=$( ls -1 -d config/* )

for file in $configs ; do
    target="$HOME/.config/$( basename $file )"

    echo "Removing $( basename $target)."
    rm -rf $target
done

cd ..
if [ -d $DOTFILES ]; then
    rm -rf $DOTFILES
fi

unset file linkables configs target

echo "All dotfiles are uninstalled."
