export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    git 
    golang
    # Customs plugins
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

# Env
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GOROOT=/usr/local/go

export FLUTTER_BIN=$HOME/development/flutter/bin

export JAVA_HOME=$HOME/.jdks/openjdk-20.0.2/bin
export ANDROID_HOME=$HOME/Android/Sdk
export SDK_MANAGER=$ANDROID_HOME/cmdline-tools/latest/bin

export PATH=$GOBIN:$GOROOT/bin:$FLUTTER_BIN:$JAVA_HOME:$SDK_MANAGER:$ANDROID_HOME:$PATH
