#!/bin/sh

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

source $HOME/.bashrc

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/joshfreeman/google-cloud-sdk/path.bash.inc' ]; then . '/Users/joshfreeman/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/joshfreeman/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/joshfreeman/google-cloud-sdk/completion.bash.inc'; fi

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
