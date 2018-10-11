" 显示行数
set nu

" 显示相对行号
"set relativenumber

" 语法高亮
syntax on

" 开启文件类型检测
filetype on

" 自动保存
set autowrite

" 允许使用鼠标
set mouse=c

" 所在的行高亮
set cursorline

" 搜索结果高亮
set hlsearch

" 总是显示状态行
set laststatus=2

" 状态行显示现在执行的命令
set showcmd

" 粘贴时保持粘贴的格式
set paste

" 高亮显示匹配的括号
set showmatch

" 自动缩进
set smartindent

" 自动缩进,和上一行相同
set autoindent 

" 使用C/C++语言的自动缩进的方式缩进
set cindent 

" tab=4
set tabstop=4
set softtabstop=4
set shiftwidth=4

" 括号自动补齐
" inoremap ( ()<ESC>i
" inoremap [ []<ESC>i
" inoremap { {}<ESC>i
" inoremap < <><ESC>i

:inoremap ( ()<LEFT>
:inoremap [ []<LEFT>
:inoremap { {}<LEFT>


