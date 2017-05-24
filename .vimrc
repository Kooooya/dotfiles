call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'
Plug 'crusoexia/vim-monokai'
Plug 'stephpy/vim-yaml'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Townk/vim-autoclose'
Plug 'Valloric/YouCompleteMe'
Plug 'cakebaker/scss-syntax.vim'
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'tomasr/molokai'
Plug 'leafgarland/typescript-vim'
Plug 'jason0x43/vim-js-indent'
Plug 'ervandew/supertab'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'shawncplus/phpcomplete.vim'
Plug 'posva/vim-vue'
Plug 'soramugi/auto-ctags.vim'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-runtime'

call plug#end()

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" color scheme
"
" syntax enable
" syntax on
" colorscheme monokai
syntax on
colorscheme molokai
set t_Co=256

set enc=utf-8
set t_ti=""

" esc
noremap <C-j> <esc>
noremap! <C-j> <esc>


" golang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"


let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd FileType typescript :set makeprg=tsc
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

<<<<<<< Updated upstream
" php
filetype plugin indent on
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

set completeopt=longest,menuone

let g:phpcomplete_index_composer_command='/usr/local/bin/composer'
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
=======
let g:auto_ctags = 1
let g:auto_ctags_directory_list = ['.git', '.svn']

" Launches neocomplete automatically on vim startup.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Use camel case completion.
let g:neocomplete#enable_camel_case = 1
" buffer file name pattern that locks neocomplete. e.g. ku.vim or fuzzyfinder
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" This variable controls the number of candidates displayed in a pop-up menu
let g:neocomplete#max_list = 20
" Define file-type dependent dictionaries.
let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ }
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" Plugin key-mappings.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
>>>>>>> Stashed changes
