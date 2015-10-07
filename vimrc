" Leader
let mapleader = " "

set backspace=2   " Backspace deletes like most programs in insert mode
set nocompatible  " Use Vim settings, rather then Vi settings
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

"autocmd BufWritePost *.tex !make all
filetype plugin indent on
filetype plugin on
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" set wrapping options
set wrap
set linebreak
set nolist " list disables linebreak
set textwidth=100
set wrapmargin=0
set formatoptions+=t
set colorcolumn=100
highlight ColorColumn ctermbg=DarkGray

map <F8> :!make build<CR>
map <F9> :!make all<CR>

" For all text files set 'textwidth' to 80 characters.
autocmd FileType text setlocal textwidth=80

" When editing a file, always jump to the last known cursor position.
" Don't do it for commit messages, when the position is invalid, or when
" inside an event handler (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif