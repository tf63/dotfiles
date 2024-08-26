alias sail='[ -f sail ] && zsh sail || zsh vendor/bin/sail'
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export VOLTA_HOME="$HOME/.volta"
export GOENV_ROOT="$HOME/.goenv"
export PATH="$VOLTA_HOME/bin:$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
