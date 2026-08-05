# NOTE: PATHS to Include

# Adds ~/bin
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Adds ~/.local/bin
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Adds /usr/local/bin
if [ -d "/usr/local/bin" ] ; then
    PATH="/usr/local/bin:$PATH"
fi

# Adds /opt/nvim-linux-x86_64/bin
if [ -d "/opt/nvim-linux-x86_64/bin" ] ; then
    PATH="/opt/nvim-linux-x86_64/bin:$PATH"
fi

# Rust
if [[ -f "$HOME/.cargo/env" ]]; then
  . "$HOME/.cargo/env"  
fi

# Go
export GOPATH="$XDG_DATA_HOME"/go
PATH=$PATH:$GOPATH/bin

# NOTE: Environment Variables

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="/run/user/$(id -u)"

# SHELL
export EDITOR='nvim'
export VISUAL='nvim'
export LC_ALL=en_AU.UTF-8
export LANG=en_AU.UTF-8
export LANGUAGE=en_AU:en
export TERM=xterm-256color
export COLORTERM=truecolor
export TERMINAL=wezterm
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export LESSHISTFILE="$XDG_STATE_HOME"/less/history
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
export STARSHIP_CONFIG="$HOME"/.config/starship/starship.toml

# FZF
export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND="fd"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# NOTE: Catppuccin Mocha
#export FZF_DEFAULT_OPTS=" \
#--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
#--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
#--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
#--color=selected-bg:#45475A \
#--color=border:#6C7086,label:#CDD6F4"
# NOTE: Tokyonight
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none \
  --color=bg+:#283457 \
  --color=bg:#16161e \
  --color=border:#27a1b9 \
  --color=fg:#c0caf5 \
  --color=gutter:#16161e \
  --color=header:#ff9e64 \
  --color=hl+:#2ac3de \
  --color=hl:#2ac3de \
  --color=info:#545c7e \
  --color=marker:#ff007c \
  --color=pointer:#ff007c \
  --color=prompt:#2ac3de \
  --color=query:#c0caf5:regular \
  --color=scrollbar:#27a1b9 \
  --color=separator:#ff9e64 \
  --color=spinner:#ff007c \
"

# HomeBrew
export HOMEBREW_NO_ENV_HINTS=1
