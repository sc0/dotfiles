# dotfiles

Simple configuration files for NeoVim, tmux and ZSH.
Please note that MacOS specific aliases are commented out in .zshrc, as well as Angular autocomplete.

## Install

First make sure that NeoVim, Node.js (required for coc.vim), tmux, git and zsh are installed. The script will take care of the addons required (plug.vim, oh-my-zsh, etc).

Simply run
```
chmod u+x install.sh && ./install.sh
```

after that remember to run `:PlugInstall` upon first run of NeoVim and you're all set.
