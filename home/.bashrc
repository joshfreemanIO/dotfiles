#!/bin/sh

export DOTFILES=$HOME/Projects/joshfreemanIO/dotfiles

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

DIR=$HOME/console-configuration

source $DOTFILES/bash/aliases
source $DOTFILES/bash/client_aliases
source $DOTFILES/bash/functions
source $DOTFILES/bash/gpg
source $DOTFILES/bash/paths
