" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()
" execute pathogen#infect()

syntax on
filetype plugin indent on

let mapleader=","

let g:pymode=1
let g:pymode_warmings=1
let g:pymode_paths=[]
let g:pymode_trim_whitespaces=1
let g:pymode_options_max_line_length = 79
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6
let g:pymode_python='python'
let g:pymode_indent=1
let g:pymode_folding=1
let g:pymode_motion=1
let g:pymode_doc=1
let g:pymode_doc_bind='K'
let g:pymode_run=1
let g:pymode_run_bind='<leader>r'


let g:pymode_lint_todo_symbol = 'WW'
let g:pymode_lint_comment_symbol = 'CC'
let g:pymode_lint_visual_symbol = 'RR'
let g:pymode_lint_error_symbol = 'EE'
let g:pymode_lint_info_symbol = 'II'
let g:pymode_lint_pyflakes_symbol = 'FF'

let g:pymode_rope_goto_definition_bind = '<C-c>g'
let g:pymode_rope_goto_definition_cmd='new'


let g:pymode_syntax = 1
let g:pymode_syntax_slow_sync = 1
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=0
let g:pymode_syntax_highlight_equal_operator = g:pymode_syntax_all
let g:pymode_syntax_highlight_self = g:pymode_syntax_all
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_syntax_string_formatting = g:pymode_syntax_all
let g:pymode_syntax_string_format = g:pymode_syntax_all
let g:pymode_syntax_string_templates = g:pymode_syntax_all
let g:pymode_syntax_doctests = g:pymode_syntax_all
