#!/bin/zsh

# inicializa os submódulos prezto e vim/bundle/vundle
git submodule update --init --recursive

# link config files to $HOME
setopt EXTENDED_GLOB
for rcfile in "$PWD/"^(install.zsh|prezto|config); do
    rm -rf "$HOME/.${rcfile:t}"
    ln -s "$rcfile" "$HOME/.${rcfile:t}"
done

export CONFIG_DIR=${XDG_CONFIG_DIR:-$HOME/.config}
for rcdir in "$PWD"/config/*; do
    rm -rf "$CONFIG_DIR/${rcdir:t}"
    ln -s "$rcdir" "$CONFIG_DIR/${rcdir:t}"
done

# change default shell to ZSH
curr_shell=$(basename $(getent passwd $LOGNAME | cut -d: -f7))
if [ $curr_shell != zsh ]; then
    chsh -s /bin/zsh
fi

# instala plugins do neovim
nvim -e -c PlugInstall -c q -c q

# instala plugins do tmux
"$PWD/tmux/plugins/tpm/scripts/install_plugins.sh"
