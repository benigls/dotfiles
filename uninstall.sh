echo "Uninstalling dotfiles..."

DOTFOLDER="$HOME/.dotfiles"
VIMRC=".vimrc"
ZSHRC=".zshrc"
TMUXCONF=".tmux.conf"
GITCONF=".gitconfig"
CONFIG="base16-shell" #TODO: Make it flexible when their are many config folder.

if [ -d "$DOTFOLDER" ]; then
    rm -rf "$DOTFOLDER"
fi

rm $HOME/$VIMRC
rm $HOME/$ZSHRC
rm $HOME/$TMUXCONF
rm $HOME/$GITCONF
rm -rf $HOME/.vim

echo "All dotfiles uninstalled"
