# Paths
export ZSH="$HOME/.oh-my-zsh"
export PATH="/opt/homebrew/bin/eza:$PATH"

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# aliases
alias cd='z'
alias ls='eza --icons'
alias ll='eza -lg --icons'
alias lt='eza -lTag --level=2 --icons'

alias tls='tmux ls'
alias tn='tmux new-session -t'
alias ta='tmux attach -t'

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
