#!/bin/bash

echo "Installing dotfiles..."

echo "Initializing submodule(s)"
git submodule update --init --recursive

if [ ! -d $DOTFILES ]; then
    cp -r ../dotfiles $DOTFILES
fi

echo "Creating symlinks"
linkables=$( ls -1 -d **/*.symlink )

for file in $linkables ; do
    target="$HOME/.$( basename $file ".symlink" )"
    echo "Creating symlink for $file"

    ln -s $DOTFILES/$file $target
done

echo "Instaling .config files."
cp -r config/* $HOME/.config/

echo "All dotfiles are installed."
