################################################################################
# install packages with cargo
################################################################################
if command_exists cargo; then
    dots_func_log "[cargo] start installing apps with cargo..."

    if ! command_exists starship; then
        dots_func_log "[cargo:starship] installing starship..."
        cargo install starship
        dots_func_log "[cargo:starship] starship installed"
    fi


    if ! command_exists lsd; then
        dots_func_log "[cargo:lsd] installing lsd..."
        cargo install lsd
        dots_func_log "[cargo:lsd] lsd installed"
    fi

    if ! command_exists tig; then
        dots_func_log "[cargo:tig] installing tig..."
        cargo install tig
        dots_func_log "[cargo:tig] tig installed"
    fi

    if ! command_exists fd; then
        dots_func_log "[cargo:fd-find] installing fd-find..."
        cargo install fd-find
        dots_func_log "[cargo:fd-find] fd-find installed"
    fi

    # TODO: more

    dots_func_log "[cargo] all apps installed"
else
    # TODO: cargos or cargoes?
    dots_func_log "Cannot file executable [cargo], failed to install cargos."
fi


if command_exists starship; then
    dots_func_log "[starship] prepare to launch starship..."
    eval "$(starship init zsh)"
    export STARSHIP_CONFIG=$DOTS/config/starship/starship.toml
    dots_func_log "[starship] set STARSHIP_CONFIG to $STARSHIP_CONFIG"

    export STARSHIP_CACHE=$DOTS_CACHE/starship/cache
    prepare_dir $DOTS_CACHE/starship
    dots_func_log "[starship] set STARSHIP_CACHE to $STARSHIP_CACHE"

    dots_func_log "[starship] launched"
    dots_func_newline
fi

if command_exists lsd; then
    alias ls=lsd
    dots_func_log "[lsd] aliased ls to lsd"
    dots_func_newline
fi
