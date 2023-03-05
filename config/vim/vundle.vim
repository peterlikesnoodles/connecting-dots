set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$DOTS_X/Vundle.vim
call vundle#begin('$DOTS_DATA/vim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" Plugin 'pangloss/vim-javascript'
" Plugin 'mxw/vim-jsx'
" Plugin 'kchmck/vim-coffee-script'
" Plugin 'leafgarland/typescript-vim'
" Plugin 'HerringtonDarkholme/yats.vim'

" UI enhancement
" Plugin 'airblade/vim-gitgutter'
" Plugin 'tpope/vim-vinegar' " netrw enhanced
" Plugin 'ternjs/tern_for_vim'
" Plugin 'majutsushi/tagbar'

" CSS related
" Plugin 'hail2u/vim-css3-syntax'
" conflicts while opening markdown
" Plugin 'styled-components/vim-styled-components'

" efficiency
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'tpope/vim-fugitive'

" color schemes
" Plugin 'morhetz/gruvbox'
" Plugin 'https://github.com/hzchirs/vim-material'
" Plugin 'trevordmiller/nova-vim'
" Plugin 'joshdick/onedark.vim'
" Plugin 'junegunn/fzf' " TODO: 目前不能使用，要去 GitHub 上找到对应的文档做 install all 处理
" 大而全的语法高亮集
Plugin 'sheerun/vim-polyglot'
" vim-polyglot 使用 yats, 遇到大 tsx 文件爆卡，所以安装了这个
" 这个插件只支持 ts
Plugin 'leafgarland/typescript-vim'
" 这个插件基于上面的插件，增加支持 tsx
Plugin 'peitalin/vim-jsx-typescript'
" Plugin 'gabrielelana/vim-markdown'
Plugin 'rakr/vim-one'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
" Plugin 'neoclide/coc.nvim', {'branch': 'release'}
" auto complete
" YouCompleteMe 要求使用 Python, 但是 MacOS 的 Vim 对 Python 的支持是狗屎
" 所以你需要安装 macvim (brew install 一下).
" 每次 YouCompleteMe 更新后，需要重新 compile, 要在 bundle 目录下运行：
" ./install.py --all
" 上面 --all 会包含 Go, Rust, JS/TS, etc.
" Plugin 'ycm-core/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'preservim/nerdcommenter'
Plugin 'phaazon/hop.nvim'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'neoclide/coc.nvim', {'branch': 'release', 'do': 'yarn install'}

" colorschemes


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme one

hi Normal guibg=NONE ctermbg=NONE

highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000


