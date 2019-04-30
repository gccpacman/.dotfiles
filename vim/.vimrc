syntax on
filetype plugin indent on

" vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

let mapleader = ","
"set timeoutlen=2000

set autoread
set nocompatible

set wildignore=*.swp,*.bak,*.pyc,*.class,.svn
set encoding=utf-8
set fileencodings=utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set laststatus=2

" set cursorcolumn
" set cursorline

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

au BufNewFile, BufRead *.py,
  \ set tabstop=4
  \ set shiftwidth=4 
  \ set softtabstop=4
  \ set textwidth=79
  \ set autoindent
  \ set expandtab
  \ set shiftround

au BufNewFile, BufRead *.js, *.html, *.css,
  \ set tabstop=2
  \ set shiftwidth=2 
  \ set softtabstop=2
  \ set expandtab

"Bundle 'ervandew/supertab'

" split windows 
set splitbelow
set splitright
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" code folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

Bundle 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

" show or hide line number
set number

" nmap <leader>l :set invnumber<CR>
"
" remember file location
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" paste mode
set pastetoggle=<leader>p

" ack
Bundle 'mileszs/ack.vim'
" better search code  https://github.com/ggreer/the_silver_searcher
" let g:ackprg = 'ag --nogroup --nocolor --column'
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

nnoremap <leader>c :Ack 

" nerdtree
Bundle 'scrooloose/nerdtree.git'
let g:nerdtree_tabs_open_on_console_startup=0
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeMouseMode=3         "  single click to open folder or file
nmap <leader>q :NERDTreeToggle<CR>

" set mouse=a

" wrap
set nowrap
nmap <leader>w :set invwrap<CR>

" Improve up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk

" F6 git 
Bundle 'airblade/vim-gitgutter'
"map <leader>g :GitGutterToggle<cr>

" If you have your project tracked with Git, switching between terminal
" sessions can be really painful. Fugitive is absolutely greatly tool for
" using Git inside Vim.
" Bundle 'tpope/vim-fugitive'

" set invhlsearch 
set hlsearch      " 高亮search命中的文本。
set incsearch     " 打开增量搜索模式,随着键入即时搜索
set ignorecase
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise

"nmap <leader>h :set invhlsearch<CR>

" Highlight all instances of word under cursor, when idle.

" select all
map <leader>sa ggVG"

" force write files require root permission
" https://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work#
cnoremap w!! w !sudo tee > /dev/null %

" tagbar
Bundle 'majutsushi/tagbar'
"let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
nmap <leader>s :TagbarToggle<CR>

" Vim plugin for intensely orgasmic commenting
" https://github.com/scrooloose/nerdcommenter
Bundle 'scrooloose/nerdcommenter'

" Python Dev
"
" Bundle 'vim-scripts/indentpython.vim'
Bundle 'davidhalter/jedi-vim'
 
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "left"  "default off, open in split not buffer
let g:jedi#goto_command = "<leader>j"
let g:jedi#goto_assignments_command = "<leader>a"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "<leader>k"
let g:jedi#max_doc_height = 10 
let g:jedi#auto_close_doc = 1
let g:jedi#popup_on_dot = 0
" let g:jedi#popup_select_first = 1
" let g:jedi#completions_enabled = 1
" let g:jedi#completions_command = "<C-n>"
let g:jedi#usages_command = "<leader>u"
let g:jedi#rename_command = "<leader>r"

" on the fly Python checking in Vim with PyFlakes (Deplicated)
" Bundle 'kevinw/pyflakes-vim'
Bundle 'nvie/vim-flake8'

" VueJs
Bundle 'posva/vim-vue'

" maximize & minimize
nnoremap <C-W>M <C-W>\| <C-W>_
nnoremap <C-W>m <C-W>=

