# NOTE: If not running interactively, don't do anything!
[[ $- != *i* ]] && return

# NOTE: Set Cursor Style
# 0 ==> default
# 1 ==> blinking block (my default)
# 2 ==> steady block
# 3 ==> blinking underdcore
# 4 ==> steady underscore
# 5 ==> blinking bar
# 6 ==> steady bar
echo -ne '\e[1 q'
preexec() {
    echo -ne '\e[1 q'
}

# NOTE: Setup ZINIT as our zsh plugin manager
# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# NOTE: Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# NOTE: Add in Snippets
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found
zinit snippet OMZP::forklift

# NOTE: Load Completions
autoload -U compinit && compinit
zinit cdreplay -q

# NOTE: Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region
bindkey '^[[3~' delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# NOTE: History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# NOTE: Completion Styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no

# TODO: Update for EZA
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# NOTE: Source homebrew if installed
if [[ -f "/opt/homebrew/bin/brew" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# NOTE: Source linuxbrew if installed
if [[ -f "/home/linuxbrew/.linuxbrew/bin/brew" ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# NOTE: shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"

# NOTE: Ruby
if [[ -d "/opt/homebrew/opt/chruby" ]] then
    source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
    source /opt/homebrew/opt/chruby/share/chruby/auto.sh
    chruby ruby-3.4.1 # run chruby to see actual version
fi
if [[ -d "/usr/local/opt/chruby/share/chruby" ]] then
    source /usr/local/opt/chruby/share/chruby/chruby.sh
    source /usr/local/opt/chruby/share/chruby/auto.sh
    chruby ruby-3.4.1 # run chruby to see actual version
fi

# NOTE: Create undodir for Neovim
undodir="$HOME/.cache/undodir"
if [ ! -d "$undodir" ]; then
  mkdir "$undodir"
fi

# NOTE: Source .zsh-aliases file
if [[ -f "$HOME/.zsh-aliases" ]]; then
  source $HOME/.zsh-aliases
fi
