" vim vundle
set nocompatible

syntax on
filetype plugin indent on

let mapleader = "\\"
set timeoutlen=2000

" 文件修改后自动重载
set autoread

set wildignore=*.swp,*.bak,*.pyc,*.class,.svn
" 突出显示当前行等, 因为主题问题暂时不用
set cursorcolumn
set cursorline          " 突出显示当前行

" 设置新文件的编码为 UTF-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" 设置成n可以用鼠标选择光标
" set mouse=n

nmap <F6> :call HideNumber()<CR>

" F9 for PymodeLint
nmap <F9> :PymodeLint<CR>

"F12 show or hide line number
nmap <F10> :set invnumber<CR>

" 显示行号： 默认关闭，按F12打开
set nonumber
" 取消换行。
set nowrap

" select all
map <leader>sa ggVG"

" always show status line
" set laststatus=2

" force write files require root permission
cnoremap w!! w !sudo tee > /dev/null %

" ======== VimBundle ========

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" ======== VimBundle$ ========

" values represent: [ FG, BG, ATTR ]
"   FG ang BG are color codes
"   ATTR (optional) is a comme-delimited string of one or more of bold, dim, underscore, etc. For details refer to 'message-attr attributes' in tmux man page
Bundle 'itchyny/landscape.vim'

" ======== NerdTree ========
Bundle 'scrooloose/nerdtree.git'

map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=0

let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeMouseMode=3         "  single click to open folder or file

map <F3> :NERDTreeToggle<CR>

" ======== NerdTree $ ========

" Fctix Vim
Bundle 'fcitx.vim'

" ======== Python ^ ========
Bundle 'davidhalter/jedi-vim'

let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "bottom"  "open in split not buffer
let g:jedi#goto_command = "<leader>g"
let g:jedi#goto_assignments_command = "<leader>a"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "<leader>k"
let g:jedi#max_doc_height = 35
let g:jedi#auto_close_doc = 1
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first = 1
let g:jedi#completions_enabled = 1
let g:jedi#completions_command = "<C-n>"
let g:jedi#usages_command = "<leader>u"
let g:jedi#rename_command = "<leader>r"

" ======== Python $ ========

" ======== buffer and tabs ========
Bundle 'jlanzarotta/bufexplorer'

nmap <silent> <F2> :BufExplorer<CR>

" ======== buffer and tabs $ ========

" ======== colorschemes and themes ========
Bundle 'flazz/vim-colorschemes'

let g:Powerline_symbols = 'fancy'

set t_Co=256
set background=light
colorscheme google

" ======== colorschemes and themes $ ========

" ======== git and code shortcut ========
Bundle 'airblade/vim-gitgutter'

map <F11> :GitGutterToggle<cr>
let g:tagbar_ctags_bin = '/usr/bin/ctags'

" ======== git and code shortcut $ ========

"  ======== markdown ========
"  ======== markdown ========

" ======== search and highlight ========
"设置文内智能搜索提示
" 高亮search命中的文本。
set hlsearch
" 打开增量搜索模式,随着键入即时搜索
set incsearch
" 搜索时忽略大小写
set ignorecase
" 有一个或以上大写字母时仍大小写敏感
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise

" ======== search and highlight $ ========

" 缩进配置
set smartindent   " Smart indent
set autoindent    " 打开自动缩进
set tabstop=4     " 设置Tab键的宽度        [等同的空格个数]
set shiftwidth=4  " 每一次缩进对应的空格数
set softtabstop=4 " 按退格键时可以一次删掉 4 个空格
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop 按退格键时可以一次删掉 4 个空>
set expandtab     " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set shiftround    " 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'


" Syntax for multiple tag files are
" set tags=/my/dir1/tags, /my/dir2/tags
set tags=tags;$HOME/.vim/tags/


" ======== multiple Window ========

"Smart way to move between windows 分屏窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" ======== multiple Window ========
