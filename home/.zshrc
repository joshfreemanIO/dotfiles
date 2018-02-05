#!/bin/zsh

export ZSH=$HOME/.oh-my-zsh
export DOTFILES=$HOME/Projects/joshfreemanIO/dotfiles
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

ZSH_THEME="terminalparty"

ENABLE_CORRECTION="true"

plugins=(brew composer git github gpg-agent laravel ruby gem osx node npm terminalapp)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Vim Mode
bindkey -v
bindkey '^R' history-incremental-search-backward

DIR=$HOME/console-configuration

source $ZSH/oh-my-zsh.sh

source $DOTFILES/bash/paths
source $DOTFILES/bash/aliases
source $DOTFILES/bash/client_aliases
source $DOTFILES/bash/functions

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export ERL_AFLAGS="-kernel shell_history enabled"
