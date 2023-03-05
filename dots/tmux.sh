if command_exists tmux; then
    alias t='tmux'
    dots_func_log "[tmux] aliased t to tmux"
fi

if command_exists tmuxinator; then
    alias mux='tmuxinator'
    dots_func_log "[tmux] aliased mux to tmuxinator"
fi

if [[ ! -f $HOME/.tmux.conf ]]; then
    dots_func_log "[tmux] ~/.tmux.conf not found"
    dots_func_log "[tmux] creating soft link $/.tmux.conf"
    ln -s $DOTS/config/tmux/.tmux.conf $HOME/.tmux.conf
    dots_func_log "[tmux] soft link $/.tmux.conf created"
    dots_func_newline
fi
