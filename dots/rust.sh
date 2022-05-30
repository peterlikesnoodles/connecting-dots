################################################################################
# Rust
################################################################################

# auto install
if ! command_exists rustup; then
    dots_func_log "[rust] rustup not found"
    dots_func_log "[rust] installing rustup"
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    dots_func_log "[rust] installed"
fi

# RUSTUP_HOME sets the root rustup folder, which is used for storing installed
# toolchains and configuration options.
export RUSTUP_HOME="$DOTS_DATA"/rust/rustup
dots_func_log "[rust] set RUSTUP_HOME to $RUSTUP_HOME"
prepare_dir "$RUSTUP_HOME"

# CARGO_HOME contains cache files used by cargo.
export CARGO_HOME="$DOTS_CACHE"/rust/cargo
dots_func_log "[rust] set CARGO_HOME to $CARGO_HOME"
prepare_dir "$CARGO_HOME"

export PATH="$PATH":"$CARGO_HOME/bin"
dots_func_log "[rust] added $CARGO_HOME/bin to path"

dots_func_log "[rust] setup complete."
dots_func_newline