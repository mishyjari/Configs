" Enable syntax highlighting
:syntax on

" Enable line numbers
:set number

" Tab == 4 spaces
:set tabstop=4
:set softtabstop=4

" Auto indenting
:set autoindent
:set smartindent
:set wrap

" Display line under cursorline
:set cursorline

" Enable autocomplete
let g:ale_completion_enabled=1

"Ruler
set ruler

" Enables quick searching
set hlsearch

" Highlights syntax matches () {} etc
set showmatch

set noswapfile

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ " %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

set cmdheight=1

set shiftwidth=4

" Force cursor to treat virtual new lines as lines in visual mode
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]


" Plugins 
call plug#begin('~/.vim/pack/default/start/vim-polyglot/autoload/')
call plug#end()
