echo "Uninstalling dotfiles..."
# TODO: Refactor this. Reverse the process of installation.
DOTFOLDER="$HOME/.dotfiles"
VIMRC=".vimrc"
ZSHRC=".zshrc"
TMUXCONF=".tmux.conf"
GITCONF=".gitconfig"
CONFIG=".config/base16-shell" #TODO: Make it flexible when their are many config folder.

if [ -d "$DOTFOLDER" ]; then
    rmf "$DOTFOLDER"
fi

rm $HOME/$VIMRC
rm $HOME/$ZSHRC
rm $HOME/$TMUXCONF
rm $HOME/$GITCONF
rmf $HOME/.vim
rmf $HOME/$CONFIG

echo "All dotfiles uninstalled"
