#!/bin/zsh
set -x
# init submódulos prezto 
git submodule update --init --recursive

# link config files
setopt EXTENDED_GLOB
for rcfile in "$PWD/"^install.zsh; do
    rm -rf "$HOME/.${rcfile:t}"
    ln -s "$rcfile" "$HOME/.${rcfile:t}"
done

# vim plugins
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim -e -c PlugInstall -c q -c q

# tmux plugins
"$PWD/tmux/plugins/tpm/scripts/install_plugins.sh"
