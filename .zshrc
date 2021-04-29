# Theme
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
