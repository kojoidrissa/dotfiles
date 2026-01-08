#!/bin/bash
# install.sh - Symlink dotfiles to home directory

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

link() {
    local src="$1"
    local dest="$2"
    
    if [ -e "$dest" ] && [ ! -L "$dest" ]; then
        echo "Backing up $dest to $dest.backup"
        mv "$dest" "$dest.backup"
    fi
    
    ln -sf "$src" "$dest"
    echo "Linked $src → $dest"
}

# Add new files here as you create them
link "$DOTFILES/zshrc" "$HOME/.zshrc"
link "$DOTFILES/gitconfig" "$HOME/.gitconfig"
link "$DOTFILES/ssh_config" "$HOME/.ssh/config"

echo "Done! Run 'source ~/.zshrc' or open a new terminal."
