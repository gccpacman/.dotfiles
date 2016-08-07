syntax on
filetype plugin indent on

" vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

let mapleader = ","
set timeoutlen=2000

set autoread
set nocompatible

set wildignore=*.swp,*.bak,*.pyc,*.class,.svn
set cursorcolumn        " 突出显示当前列
set cursorline          " 突出显示当前行

Bundle 'ervandew/supertab'

set smartindent         " Smart indent
set autoindent          " 打开自动缩进
set tabstop=2           " 设置Tab键的宽度        [等同的空格个数]
set shiftwidth=2        " 每一次缩进对应的空格数
set softtabstop=2       " 按退格键时可以一次删掉 4 个空格
set smarttab            " insert tabs on the start of a line according to shiftwidth, not tabstop 按退格键时可以一次删掉 4 个空>
set expandtab           " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set shiftround          " 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'

set encoding=utf-8
set fileencodings=utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set guifont=Tamsyn\ 10
" always show status line
set laststatus=2

" google codefmt
" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
" Bundle 'google/vim-maktaba'
" Bundle 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
" Bundle 'google/vim-glaive'
" call glaive#Install()

" fcitx 
"Bundle 'fcitx.vim'

" naturally copy, cut, paste between buffer and system clipboard
Bundle 'NLKNguyen/copy-cut-paste.vim'

" command-t
" execute following command is needed:
" https://github.com/wincent/command-t/blob/master/doc/command-t.txt
"   cd ~/.vim/bundle/command-t/ruby/command-t
"   ruby extconf.rb
"   make
Bundle 'wincent/command-t'

nnoremap <leader>t :CommandT<CR>
nnoremap <leader>l :CommandTLine<CR>
nnoremap <leader>y :CommandTHistory<CR>
nnoremap <leader>b :CommandTBuffer<CR>
nnoremap <leader>r :CommandTMRU<CR>
nnoremap <leader>j :CommandTJump<CR>

" ack
Bundle 'mileszs/ack.vim'

" Raimondi/delimitMate
Bundle 'Raimondi/delimitMate'

" F2 buf exploror
Bundle 'jlanzarotta/bufexplorer'
"nmap <leader>b :BufExplorer<CR>
nmap <leader>p :bp<CR>
nmap <leader>n :bn<CR>

" F3 nerdtree
Bundle 'scrooloose/nerdtree.git'
let g:nerdtree_tabs_open_on_console_startup=0
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeMouseMode=3         "  single click to open folder or file
nmap <leader>q :NERDTreeToggle<CR>

" show or hide line number
set number
nmap <leader>l :set invnumber<CR>

set mouse=a

" wrap and no wrap
set nowrap
nmap <leader>w :set invwrap<CR>
" Improve up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk

" F6 git 
Bundle 'airblade/vim-gitgutter'
" map <F6> :GitGutterToggle<cr>

" If you have your project tracked with Git, switching between terminal
" sessions can be really painful. Fugitive is absolutely greatly tool for
" using Git inside Vim.
Bundle 'tpope/vim-fugitive'

" set invhlsearch 
set hlsearch      " 高亮search命中的文本。
set incsearch     " 打开增量搜索模式,随着键入即时搜索
set ignorecase
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise

nmap <leader>h :set invhlsearch<CR>

" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off.
nnoremap <leader>z :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction

" select all
map <leader>sa ggVG"

" force write files require root permission
cnoremap w!! w !sudo tee > /dev/null %

"Vim sugar for the UNIX shell commands that need it the most. Features
"include:
"
":Remove: Delete a buffer and the file on disk simultaneously.
":Unlink: Like :Remove, but keeps the now empty buffer.
":Move: Rename a buffer and the file on disk simultaneously.
":Rename: Like :Move, but relative to the current file's containing directory.
":Chmod: Change the permissions of the current file.
":Mkdir: Create a directory, defaulting to the parent of the current file.
":Find: Run find and load the results into the quickfix list.
":Locate: Run locate and load the results into the quickfix list.
":Wall: Write every open window. Handy for kicking off tools like guard.
":SudoWrite: Write a privileged file with sudo.
":SudoEdit: Edit a privileged file with sudo.
"File type detection for sudo -e is based on original file name.
"New files created with a shebang line are automatically made executable.
"New init scripts are automatically prepopulated with /etc/init.d/skeleton.
Bundle 'tpope/vim-eunuch'

" values represent: [ FG, BG, ATTR ]
"   FG ang BG are color codes
"   ATTR (optional) is a comme-delimited string of one or more of bold, dim, underscore, etc. For details refer to 'message-attr attributes' in tmux man page
" Bundle 'itchyny/landscape.vim'

" tagbar
Bundle 'majutsushi/tagbar'
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
nmap <leader>s :TagbarToggle<CR>

" Vim plugin for intensely orgasmic commenting
" https://github.com/scrooloose/nerdcommenter
Bundle 'scrooloose/nerdcommenter'

" python
Bundle 'davidhalter/jedi-vim'
 
let g:jedi#use_tabs_not_buffers = 0
" let g:jedi#use_splits_not_buffers = "bottom"  "default off, open in split not buffer
let g:jedi#goto_command = "<leader>g"
let g:jedi#goto_assignments_command = "<leader>a"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "<leader>k"
let g:jedi#max_doc_height = 10 
let g:jedi#auto_close_doc = 1
let g:jedi#popup_on_dot = 0 
let g:jedi#popup_select_first = 1
let g:jedi#completions_enabled = 1
let g:jedi#completions_command = "<C-n>"
let g:jedi#usages_command = "<leader>u"
let g:jedi#rename_command = "<leader>r"

" on the fly Python checking in Vim with PyFlakes (Deplicated)
Bundle 'kevinw/pyflakes-vim'

" flask jinja2 template
Bundle 'lepture/vim-jinja'
au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja

" Syntax checking hacks for vim
Bundle 'scrooloose/syntastic'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 2


" ruby
" https://masteruby.github.io/productivity-booster/2014/05/02/vim-plugins-for-ruby.html

Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
" wisely add end in ruby, endfunction/endif/more in vim script
Bundle 'tpope/vim-endwise' 
" A vim plugin for running your Ruby tests by ':VroomRunTestFile'
Bundle 'skalnik/vim-vroom'

" template
Bundle 'slim-template/vim-slim'

" colorschemes and themes
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
let g:powerline_symbols = 'fancy'
let g:airline#extensions#tabline#enabled = 0
"let g:airline_powerline_fonts = 1
" https://github.com/vim-airline/vim-airline/wiki/Screenshots
" try with :AirlineTheme <theme>
let g:airline_theme = 'bubblegum'

Bundle 'flazz/vim-colorschemes'
" let g:solarized_termcolors=256
set t_Co=256
" set background=dark
"if has('gui_running')
"   set background=light
"else
"   set background=dark
"endif
" colorscheme solarized

" Smart way to move between split windows 
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Auto Format
" https://github.com/Chiel92/vim-autoformat 
Bundle 'Chiel92/vim-autoformat'

let g:formatterpath = ['/usr/bin/autopep8']
" noremap <leader>f :Autoformat<CR>


"let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
"let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
