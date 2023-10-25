if [ "$SHELL"=="/bin/zsh" ]; then
    dots_func_log "[zsh] set HISTFILE to $DOTS_DATA/zsh/history"
    prepare_file "$DOTS_DATA"/zsh/history
    export HISTFILE="$DOTS_DATA"/zsh/history
fi
