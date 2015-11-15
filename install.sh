#!/bin/bash

echo "Installing dotfiles..."

echo "Initializing submodule(s)"
git submodule update --init --recursive

DOTFOLDER="$HOME/.dotfiles"
GITCONF=".gitconfig"
DIR=""

if [ ! -d "$DOTFOLDER" ]; then
    mkdir "$DOTFOLDER"
fi

echo "Creating symlinks"
linkables=$( ls -1 -d **/*.symlink )

for file in $linkables ; do
    name="$( basename $file ".symlink" )"
    target="$HOME/.$name"
    echo "Creating symlink for $file"

    if [ -d "$file" ] ; then
       DIR="-r"
    fi

    cp $DIR $file $DOTFOLDER/$name
    ln -s $DOTFOLDER/$name $target

    DIR=""
done

cp $GITCONF $DOTFOLDER
ln -s $DOTFOLDER/$GITCONF $HOME/$GITCONF

echo "Instaling .config files."
cp -r config/* $HOME/.config/

echo "All dotfiles installed"
