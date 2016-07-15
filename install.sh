#!/usr/bin/env bash

echo "Installing dotfiles..."

echo "Initializing submodule(s)"
git submodule update --init --recursive

echo "Downloading vim-plug"
curl -fLo vim/vim.symlink/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

export DOTFILES="$HOME/.dotfiles"

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

if [ ! -d $HOME/.config ]; then
    mkdir $HOME/.config
fi
cp -r config/* $HOME/.config/

vim +PlugInstall +qall

echo "All dotfiles are installed."
