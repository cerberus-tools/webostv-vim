execute pathogen#infect()
syntax on
filetype plugin indent on

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':.:t'
" Show buffer number in list
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline_highlighting_cache = 1

let g:ycm_key_invoke_completion = '<C-K>'

" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']

" config project root markers.
let g:gutentags_project_root = ['.root', '.git']

" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')

" forbid gutentags adding gtags databases
let g:gutentags_auto_add_gtags_cscope = 0
