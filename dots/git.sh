if command_exists git; then
    alias gst='git status'
    dots_func_log "[git] aliased gst to [git status]"

    dots_func_log "[git] setting global configurations..."

    if [[ ! -n $(git config --global alias.co) ]]; then
        dots_func_log "[git] git alias.co does not exist, aliasing..."
        git config --global alias.co checkout
    fi

    if [[ ! -n $(git config --global alias.la) ]]; then
        dots_func_log "[git] git alias.la does not exist, aliasing..."
        git config --global alias.la "pull --prune"
    fi

    if [[ ! -n $(git config --global alias.pp) ]]; then
        dots_func_log "[git] git alias.pp does not exist, aliasing..."
        git config --global alias.pp "pull --prune"
    fi

    if [[ ! -n $(git config --global alias.fc) ]]; then
        dots_func_log "[git] git alias.fc does not exist, aliasing..."
        git config --global alias.fc '!f() { git branch -a | grep -m1 -e ${1}.*${2} | sed "s/remotes\/origin\///" | xargs git checkout; }; f'
    fi

    dots_func_log "[git] done setting global configurations"

fi
