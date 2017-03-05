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

call plug#end()


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


filetype plugin indent on
