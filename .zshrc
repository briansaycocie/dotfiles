autoload -Uz compinit && compinit

# Enable case-insensitive auto-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Theme
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# homebrew
export PATH="/opt/homebrew/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pyenv
PATH=$(pyenv root)/shims:$PATH

