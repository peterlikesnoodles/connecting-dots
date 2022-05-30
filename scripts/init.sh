source $DOTS/scripts/logger.sh

source $DOTS/scripts/command-check.sh
source $DOTS/scripts/path-check.sh

source $DOTS/scripts/prepare.sh
source $DOTS/scripts/auto-install.sh

################################################################################

prepare_dir $DOTS_X
prepare_dir $DOTS_DATA
prepare_dir $DOTS_CACHE
dots_func_log "[env] loaded STUDIO $STUDIO"
dots_func_log "[env] loaded DOTS $DOTS"
dots_func_log "[env] loaded DOTS_X $DOTS_X"
dots_func_log "[env] loaded DOTS_DATA $DOTS_DATA"
dots_func_log "[env] loaded DOTS_CACHE $DOTS_CACHE"
dots_func_newline

source $DOTS/dots/rust.sh
source $DOTS/dots/cargo.sh
# TODO: vim, tmux, nvm