#!/bin/zsh

# inicializa os submódulos prezto 
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
git submodule update --init --recursive

# link config files to $HOME
setopt EXTENDED_GLOB
for rcfile in "$PWD/"^(install.zsh|config); do
    rm -rf "$HOME/.${rcfile:t}"
    ln -s "$rcfile" "$HOME/.${rcfile:t}"
done
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
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

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# instala plugins do neovim
nvim -e -c PlugInstall -c q -c q

# instala plugins do tmux
"$PWD/tmux/plugins/tpm/scripts/install_plugins.sh"
