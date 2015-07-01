" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

syntax on

filetype plugin indent on

" theme主题
set background=dark
set t_Co=256

"colorscheme blue

" pymode设置
let g:pymode = 1
let g:pymode_warning = 1
let g:pymode_folding = 1
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_run_bind = '<C-c>r'
let g:pymode_rope_goto_definition_bind = "<C-c>g"
let g:pymode_rope_goto_definition_cmd = 'new'
let g:pymode_rope_rename_bind = '<C-c>rr'
let g:pymode_rope_rename_module_bind = '<C-c>r1r'
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_unmodified = 0
let g:pymode_lint_on_fly = 0
let g:pymode_lint_message = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
let g:pymode_lint_cwindow = 1
let g:pymode_lint_signs = 1
let g:pymode_lint_todo_symbol = 'WW'
let g:pymode_lint_comment_symbol = 'CC'
let g:pymode_lint_visual_symbol = 'RR'
let g:pymode_lint_error_symbol = 'EE'
let g:pymode_lint_info_symbol = 'II'
let g:pymode_lint_pyflakes_symbol = 'FF'


"Smart way to move between windows 分屏窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"快速的放大缩小Split窗口的快捷键 + -
"map <C-W>- <C-W>-
"map <C-W>+ <C-W>+
"map <C-W>< <C-W><
"map <C-W>> <C-W>>

" Resize the current split to at least (90,25) but no more than (140,60)
" or 2/3 of the available space otherwise.

function Splitresize()
    let hmax = max([winwidth(0), float2nr(&columns*0.66), 80])
    let vmax = max([winheight(0), float2nr(&lines*0.66), 25])
    exe "vertical resize" . (min([hmax, 140]))
    exe "resize" . (min([vmax, 60]))
endfunction

" move between splits without the ctrl-w prefix

nnoremap <silent><C-J> <C-W><C-J>:call Splitresize()<CR>
nnoremap <silent><C-K> <C-W><C-K>:call Splitresize()<CR>
nnoremap <silent><C-L> <C-W><C-L>:call Splitresize()<CR>
nnoremap <silent><C-H> <C-W><C-H>:call Splitresize()<CR>

" 设置新文件的编码为 UTF-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn


map <C-i> :tabnew<cr>
map <C-e> :tabedit 
map <C-c> :tabclose<cr>
map <C-m> :tabmove
map <C-p> :tabprevious<cr>
map <C-n> :tabnext<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" select all
map <Leader>sa ggVG"

" integrate with Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
    
set laststatus=2
