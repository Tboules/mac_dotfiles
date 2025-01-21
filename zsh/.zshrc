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
alias tks='tmux kill-session -t'

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

if [[ "$(uname)" == "Darwin" ]]; then
  # nvm on mac
  export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
elif [[ "$(uname)" == "Linux" ]]; then
  # nvm on linux
  source /usr/share/nvm/init-nvm.sh
fi;


