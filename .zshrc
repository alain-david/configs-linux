export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
    git 
    golang
    # Customs plugins
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

# Env
export GO_BIN=$HOME/go/bin
export GO_ROOT=/usr/local/go
export FLUTTER_BIN="$HOME/flutter/bin"

export PATH=$PATH:$GO_BIN:$GO_ROOT/bin:$FLUTTER_BIN
