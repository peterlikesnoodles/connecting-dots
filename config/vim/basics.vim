syntax enable " Enable syntax
set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current file
set showmatch " highlight matching [{()}]
set nowrap " 过长也不要换行
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" show whitespaces
set list listchars=tab:→\ ,trail:·,precedes:·,nbsp:_,extends:>

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
set incsearch " search as characters are entered
set hlsearch " highlight matches

