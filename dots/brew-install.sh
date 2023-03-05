if [ "$(uname)"=="Darwin" ]; then
    dots_func_log "[OS] host OS is Darwin(macOS)"
    dots_func_newline

    if command_exists brew; then
        dots_func_log "[brew] brew available"
        dots_func_log "[brew] start installing apps with brew"

        if ! command_exists mvim; then
            dots_func_log "[macvim] start installing macvim"
            brew install --cask macvim
            dots_func_log "[macvim] macvim installation complete"
        fi

        if ! command_exists tmux; then
            dots_func_log "[tmux] start installing tmux"
            brew install tmux
            dots_func_log "[tmux] tmux installation complete"
        fi

        if ! command_exists tmuxinator; then
            dots_func_log "[tmuxinator] start installing tmuxinator"
            brew install tmuxinator
            dots_func_log "[tmuxinator] tmuxinator installation complete"
        fi

        if ! command_exists tig; then
            dots_func_log "[tig] start installing tig"
            brew install tig
            dots_func_log "[tig] tig installation complete"
            dots_func_newline
        fi

        if ! command_exists ag; then
            dots_func_log "[the_silver_searcher] start installing the_silver_searcher"
            brew install the_silver_searcher
            dots_func_log "[the_silver_searcher] the_silver_searcher installation complete"
        fi

        if ! command_exists nvim; then
            dots_func_log "[neovim] start installing neovim"
            brew install neovim
            dots_func_log "[neovim] neovim installation complete"
        fi

        # casks
        dots_func_log "[casks] start installing casks"
        # brew install --cask alfred
        # brew install --cask baiduinput
        # brew install --cask font-jetbrains-mono-nerd-font
        # brew install --cask google-chrome
        # brew install --cask iterm2
        # brew install --cask jetbrains-toolbox
        # brew install --cask karabiner-elements
        # brew install --cask vscodium
        # brew install --cask zoom
        # brew install --cask xmind
        # brew install --cask megasync
        dots_func_log "[casks] casks installation complete"

        dots_func_log "[brew] done installing apps with brew"
        dots_func_newline
    fi
fi
