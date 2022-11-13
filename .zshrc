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
export GO_BIN=$HOME/development/go/bin
export GO_ROOT=/usr/local/go/bin

export FLUTTER_BIN=$HOME/development/flutter/bin

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk

export ANDROID_HOME=$HOME/development/android
export SDK_MANAGER=$ANDROID_HOME/cmdline-tools/latest/bin

export PATH=$PATH:$GO_BIN:$GO_ROOT:$FLUTTER_BIN:$JAVA_HOME:$SDK_MANAGER
