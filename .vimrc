syntax on
filetype plugin indent on

let mapleader = "\\"
set timeoutlen=2000

set autoread
set nocompatible

set wildignore=*.swp,*.bak,*.pyc,*.class,.svn
set cursorcolumn        " 突出显示当前列
set cursorline          " 突出显示当前行

set smartindent         " Smart indent
set autoindent          " 打开自动缩进
set tabstop=4           " 设置Tab键的宽度        [等同的空格个数]
set shiftwidth=4        " 每一次缩进对应的空格数
set softtabstop=4       " 按退格键时可以一次删掉 4 个空格
set smarttab            " insert tabs on the start of a line according to shiftwidth, not tabstop 按退格键时可以一次删掉 4 个空>
set expandtab           " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set shiftround          " 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'


set encoding=utf-8
set fileencodings=utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set guifont=Tamsyn\ 10
" always show status line
set laststatus=2


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" fcitx 
Bundle 'fcitx.vim'

" F2 buf exploror
Bundle 'jlanzarotta/bufexplorer'
nmap <F2> :BufExplorer<CR>

" F3 nerdtree
Bundle 'scrooloose/nerdtree.git'
let g:nerdtree_tabs_open_on_console_startup=0
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeMouseMode=3         "  single click to open folder or file

nmap <F3> :NERDTreeToggle<CR>

" F4 show or hide line number
set nonumber
nmap <F4> :set invnumber<CR>

" F5 wrap and no wrap
set nowrap
nmap <F5> :set invwrap<CR>

" F6 git 
Bundle 'airblade/vim-gitgutter'
map <F6> :GitGutterToggle<cr>

" F7 set invhlsearch 
set hlsearch      " 高亮search命中的文本。
set incsearch     " 打开增量搜索模式,随着键入即时搜索
set ignorecase
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise

nmap <F7> :set invhlsearch<CR>

" select all
map <leader>sa ggVG"

" force write files require root permission
" cnoremap w!! w !sudo tee > /dev/null %

" values represent: [ FG, BG, ATTR ]
"   FG ang BG are color codes
"   ATTR (optional) is a comme-delimited string of one or more of bold, dim, underscore, etc. For details refer to 'message-attr attributes' in tmux man page
" Bundle 'itchyny/landscape.vim'
let g:tagbar_ctags_bin = '/usr/bin/ctags'

" ======== Python ^ ========
Bundle 'davidhalter/jedi-vim'
 
" let g:jedi#use_tabs_not_buffers = 0
" let g:jedi#use_splits_not_buffers = "bottom"  "open in split not buffer
" let g:jedi#goto_command = "<leader>g"
" let g:jedi#goto_assignments_command = "<leader>a"
" let g:jedi#goto_definitions_command = "<leader>d"
" let g:jedi#documentation_command = "<leader>k"
" let g:jedi#max_doc_height = 35
" let g:jedi#auto_close_doc = 1
" let g:jedi#popup_on_dot = 1
" let g:jedi#popup_select_first = 1
" let g:jedi#completions_enabled = 1
" let g:jedi#completions_command = "<C-n>"
" let g:jedi#usages_command = "<leader>u"
" let g:jedi#rename_command = "<leader>r"

" ======== Python $ ========

" ======== Java ^ ========

" ======== Java $ ========

" ======== Ruby ^ ========

" ======== Ruby $ ========

" ======== colorschemes and themes ========
Bundle 'flazz/vim-colorschemes'

let g:Powerline_symbols = 'fancy'

set t_Co=256
set background=light
colorscheme google

" ======== colorschemes and themes $ ========

" ======== multiple Window ========

"Smart way to move between windows 分屏窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" ======== multiple Window ========
