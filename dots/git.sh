if command_exists git; then
    alias gst='git status'
    # TODO: set global config when not present
    # git config --global alias.co checkout
    # git config --global alias.pp "pull --prune"
    # git config --global alias.fc checkout
fi
