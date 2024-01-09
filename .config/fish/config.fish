if status is-interactive
  # Variables
  set EDITOR nvim
  set SHELL $(which fish)
  set HOMEBREW_NO_AUTO_UPDATE 1 # Prevents every `brew install` from taking forever
  set TERM xterm-256color-italic

  # Commands to run in interactive sessions can go here
  pyenv init - | source
  pyenv virtualenv-init - | source
  starship init fish | source
  zoxide init fish | source

  # Keybinds
  bind \cd forward-word
  bind \ca backward-word
  bind \cf accept-autosuggestion
  bind \ce edit_command_buffer

  bind \cj "commandline -i ' | fzf --ansi'"
  bind \x1c "commandline -i '(find * -type d | fzf --ansi)'"
  bind \c] "commandline -i '(find * -type f | fzf --ansi)'"

  # Aliases
  alias vim="nvim"
  alias conf="vim ~/.config/fish/config.fish"
  alias vimrc="nvim ~/.config/nvim/init.lua"
  alias daiclone="git clone -c core.sshCommand=\"ssh -i /Users/kacperdebowski/.ssh/daisys-ed25519\""
  alias yoink="open -a \"Yoink\""
  alias wez="vim ~/.wezterm.lua"
  alias src="source ~/.config/fish/config.fish"
  alias tmuxconf="vim ~/.tmux.conf"
  alias t="tmux attach || tmux"
  alias ssh="TERM=xterm-256color ssh"

  # Functions
  function nvm
    replay "source ~/.nvm/nvm.sh; nvm $argv"
  end
end
