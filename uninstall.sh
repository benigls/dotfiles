echo "Uninstalling dotfiles..."

DOTFOLDER="$HOME/dotfiles"
VIMRC=".vimrc"
ZSHRC=".zshrc"
TMUXCONF=".tmux.conf"
GITCONF=".gitconfig"

if [ -d "$DOTFOLDER" ]; then
    rm -rf "$DOTFOLDER"
fi

rm $HOME/$VIMRC
rm $HOME/$ZSHRC
rm $HOME/$TMUXCONF
rm $HOME/$GITCONF

echo "All dotfiles uninstalled"
