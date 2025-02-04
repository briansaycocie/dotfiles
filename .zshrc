# Load and initialize the completion system
autoload -Uz compinit && compinit

# Enable case-insensitive auto-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Theme
#fpath+=$HOME/.zsh/pure
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

# fnm
FNM_PATH="/Users/brian/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/brian/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi
eval "$(fnm env --use-on-cd --shell zsh)"

# pyenv
if [ -d "$(pyenv root)/shims" ]; then
    export PATH="$(pyenv root)/shims:$PATH"
fi

# openjdk
if [ -d "/opt/homebrew/opt/openjdk/bin" ]; then
  export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
fi

