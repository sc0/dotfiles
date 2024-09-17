if status is-interactive
  # Variables
  set -x EDITOR nvim
  set SHELL $(which fish)
  set HOMEBREW_NO_AUTO_UPDATE 1 # Prevents every `brew install` from taking forever
  set TERM xterm-256color-italic
  set BAT_THEME base16 
  set -x XDG_CONFIG_HOME ~/.config

  fish_add_path ~/go/bin
  

  # Fish fzf setup
  fzf_configure_bindings --directory=\co --git_status=\cg
  set fzf_fd_opts --hidden --max-depth 7

  # Commands to run in interactive sessions can go here
  pyenv init - | source
  pyenv virtualenv-init - | source
  starship init fish | source
  zoxide init fish | source

  fish_config theme choose "Rosé Pine Moon"

  # Keybinds
  bind \cd forward-word
  bind \ca backward-word
  bind \cf accept-autosuggestion
  bind \ce edit_command_buffer

  # Aliases
  alias vim="nvim"
  alias conf="vim ~/.config/fish/config.fish"
  alias zelconf="vim ~/.config/zellij/config.kdl"
  alias vimrc="nvim ~/.config/nvim/init.lua"
  alias daiclone="git clone -c core.sshCommand=\"ssh -i /Users/kacperdebowski/.ssh/daisys-ed25519\""
  alias yoink="open -a \"Yoink\""
  alias wez="vim ~/.wezterm.lua"
  alias src="source ~/.config/fish/config.fish"
  alias tmuxconf="vim ~/.tmux.conf"
  alias t="tmux attach || tmux"
  alias ssh="TERM=xterm-256color command ssh"
  alias colors="curl -s https://raw.githubusercontent.com/JohnMorales/dotfiles/master/colors/24-bit-color.sh | bash"

  # Functions
  function nvm
    replay "source ~/.nvm/nvm.sh; nvm $argv"
  end

  function _aichat_fish
    set -l _old (commandline)
    if test -n $_old
      echo -n "⌛"
      commandline -f repaint
      commandline (aichat -e $_old)
    end
  end
  bind \ee _aichat_fish
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/anaconda3/bin/conda
    eval /opt/homebrew/anaconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/homebrew/anaconda3/etc/fish/conf.d/conda.fish"
        . "/opt/homebrew/anaconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/homebrew/anaconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

