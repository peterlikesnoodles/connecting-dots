# replace curl on macOS

if [ $(path_exists /opt/homebrew/opt/curl/bin) -eq 0 ]; then
    # If you need to have curl first in your PATH, run:
    # echo 'export PATH="/opt/homebrew/opt/curl/bin:$PATH"' >> ~/.zshrc
    export PATH="/opt/homebrew/opt/curl/bin:$PATH"

    # For compilers to find curl you may need to set:
    export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
    export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

    # For pkg-config to find curl you may need to set:
    export PKG_CONFIG_PATH="/opt/homebrew/opt/curl/lib/pkgconfig"

    # zsh completions have been installed to:
    #   /opt/homebrew/opt/curl/share/zsh/site-functions
fi

