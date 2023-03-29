"""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""

" Sets how many lines of history VIM has to remember
set history=500

" show line num
set nu

set cursorline

highlight CursorLine   cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE

set colorcolumn=120

" set mouse=a

" A buffer becomes hidden when it is abandoned
set hid

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" No annoying sound on errors
set noerrorbells

" Turn on the Wild menu
set wildmenu

" Copy to preserve the original formatting
set paste

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Fast saving
nmap <leader>w :w!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable
set background=dark
" colorscheme vim-material
" colorscheme space-vim-dark
colorscheme gruvbox
" Enable syntax highlighting

"" Enable 256 colors palette in Gnome Terminal
"if $COLORTERM == 'gnome-terminal'
"    set t_Co=256
"endif
"
"" Set extra options when running in GUI mode
"if has("gui_running")
"    set guioptions-=T
"    set guioptions-=e
"    set t_Co=256
"    set guitablabel=%M\ %t
"endif
"
"" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
"
"" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Be smart when using tabs ;)
set smarttab

" Use spaces instead of tabs
set expandtab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <C-space> ?

" autocmd BufWritePre *.c :%s/\s\+$//e

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

""""""""""""""""""""""""""""""
" => Install Plug
""""""""""""""""""""""""""""""
" !!!!!DONNOT DELETE THIS LINE!!!!!
call plug#begin('~/.vim/plugged')

" catalog
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'

" recently used or bookmarked files
Plug 'mhinz/vim-startify'

" for c/c++
Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'valloric/youcompleteme'
Plug 'majutsushi/tagbar'

" search file by name, ctrl + p
" Plug 'kien/ctrlp.vim'
Plug 'yggdroot/leaderf'

" indent line
Plug 'yggdroot/indentline'

" git plug
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" vim line status
" Plug 'itchyny/lightline.vim'
Plug 'powerline/powerline'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

Plug 'morhetz/gruvbox'

" !!!!!DONNOT DELETE THIS LINE!!!!!
call plug#end()

" leaderF setting
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<c-l>'
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
noremap <leader>f :LeaderfSelf<cr>
noremap <leader>fm :LeaderfMru<cr>
noremap <leader>ff :LeaderfFunction<cr>
noremap <leader>fb :LeaderfBuffer<cr>
noremap <leader>ft :LeaderfBufTag<cr>
noremap <leader>fl :LeaderfLine<cr>
noremap <leader>fw :LeaderfWindow<cr>
noremap <leader>frr :LeaderfRgRecall<cr>

""""""""""""""""""""""""""""""
" => NERDTree setting
""""""""""""""""""""""""""""""

" map f2 key, open/close NERDTree
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>

let NERDTreeIgnore=['\.pyc','\~$','\.swp']

" show line num
let NERDTreeShowLineNumbers=1
" show hidden file
let NERDTreeShowHidden=1

let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'

""""""""""""""""""""""""""""""
" => NERDCommenter setting
""""""""""""""""""""""""""""""

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '//','right': '' } }

nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

nmap <C-j> :tabNext<CR>
nmap <C-k> :tabnext<CR>

nmap <C-m> :set mouse=a<CR>
nmap <C-n> :set mouse-=a<CR>

""""""""""""""""""""""""""""""
" => tarbar setting
""""""""""""""""""""""""""""""
" map f8 key, open/close tagbar
nmap <F8> :TagbarToggle<CR>
