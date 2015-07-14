echo "Installing dotfiles..."

DOTFOLDER="$HOME/dotfiles"
VIMRC=".vimrc"
ZSHRC=".zshrc"
TMUXCONF=".tmux.conf"
GITCONF=".gitconfig"


if [ ! -d "$DOTFOLDER" ]; then
    mkdir "$DOTFOLDER"
fi

echo "Installing vim configurations."

cp $VIMRC $DOTFOLDER
ln -s $DOTFOLDER/$VIMRC $HOME/$VIMRC

echo "Installing zsh configurations."

cp $ZSHRC $DOTFOLDER
ln -s $DOTFOLDER/$ZSHRC $HOME/$ZSHRC

echo "Installing tmux configurations."

cp $TMUXCONF $DOTFOLDER
ln -s $DOTFOLDER/$TMUXCONF $HOME/$TMUXCONF

echo "Installing git configurations."

cp $GITCONF $DOTFOLDER
ln -s $DOTFOLDER/$GITCONF $HOME/$GITCONF



echo "All dotfiles installed"
