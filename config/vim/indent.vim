" 默认启用缩进
set autoindent

" 让tab字符看着有4个空格那么宽
set tabstop=8
" 衡量一个缩进的宽度，用空格的长度来算
" 所以如果代码使用 tab 做缩进，shiftwidth 要和 tabstop 设置一样的值
set shiftwidth=4
" softtabstop 会用 tab 和 space 组成来填充缩进
set softtabstop=0
" 按 tab 输入 space
set expandtab
" 根据 expandtab 决定插入 tab 还是 space. 配合上面的设置，这里会插入 space.
" TODO: 这个概念要试验一下。help 里说的看不明白
set smarttab

