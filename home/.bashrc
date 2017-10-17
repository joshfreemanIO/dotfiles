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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/josh/Projects/grok/TechBlocEvents-Infrastructure/node_modules/tabtab/.completions/serverless.bash ] && . /Users/josh/Projects/grok/TechBlocEvents-Infrastructure/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/josh/Projects/grok/TechBlocEvents-Infrastructure/node_modules/tabtab/.completions/sls.bash ] && . /Users/josh/Projects/grok/TechBlocEvents-Infrastructure/node_modules/tabtab/.completions/sls.bashexport PATH="$(brew --prefix qt@5.5)/bin:$PATH"
