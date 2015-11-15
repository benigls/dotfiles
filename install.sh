#!/bin/bash

echo "Installing dotfiles..."

echo "Initializing submodule(s)"
git submodule update --init --recursive

DOTFOLDER="$HOME/.dotfiles"
GITCONF=".gitconfig"

if [ ! -d "$DOTFOLDER" ]; then
    cp -r ../dotfiles $DOTFOLDER
fi

echo "Creating symlinks"
linkables=$( ls -1 -d **/*.symlink )

for file in $linkables ; do
    target="$HOME/.$( basename $file ".symlink" )"
    echo "Creating symlink for $file"

    ln -s $DOTFOLDER/$file $target
done

cp $GITCONF $DOTFOLDER
ln -s $DOTFOLDER/$GITCONF $HOME/$GITCONF

echo "Instaling .config files."
cp -r config/* $HOME/.config/

echo "All dotfiles installed"
