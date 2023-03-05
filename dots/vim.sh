export VIMINIT='let $MYVIMRC="$DOTS/config/vim/vimrc" | source $MYVIMRC'

command_exists vim && alias vi='vim'

## neovim on mac
if command_exists nvim; then
    dots_func_log "[vim] using neovim for vim"
    alias vim='nvim'
else
    dots_func_log "[vim] using macvim for vim"
    command_exists mvim && alias vim='mvim -v'
fi

# vim plugin dirs
prepare_dir $DOTS_DATA/vim/bundle
prepare_dir $DOTS_DATA/vim/nerdtreebookmarks

# install all vim plugins from cli
# command_exists vim && vim +PluginInstall +qall
