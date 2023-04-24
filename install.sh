#!/bin/bash

#install plug.vim for nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim';

# install nvim config (don't forget to run :PlugInstall after first run!)
mkdir -p ~/.config/nvim && ln -s $PWD/.config/nvim/init.vim ~/.config/nvim/init.vim;

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/nvim/zsh-syntax-highlighting

# install .tmux.conf && .zshrc
ln -s $PWD/.tmux.conf ~/.tmux.conf && ln -s $PWD/.zshrc ~/.zshrc;
