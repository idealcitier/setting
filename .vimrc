" 显示行数
set nu

" 语法高亮
syntax on

" 自动保存
" set autowrite

" 允许使用鼠标
set mouse=c

" 所在的行高亮
set cursorline

" 总是显示状态行
set laststatus=2
"
" 状态行显示现在执行的命令
set showcmd
"
" 粘贴时保持粘贴的格式
set paste
"
" 高亮显示匹配的括号
set showmatch
"
" 搜索设置高亮
set hlsearch

" 自动缩进
set smartindent
"
" 设置行宽提醒
set colorcolumn=100

" 一个tab键设置为4个空格
set tabstop=4
set softtabstop=4
set shiftwidth=4

"显示文件名：总行数：总的字符数
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

set noeb
