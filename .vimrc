set encoding=utf-8
set termencoding=utf-8
set nocompatible
filetype off "filetype detection

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'

syntax on "syntax
filetype plugin indent on "filetype-based indentation
set tabstop=2 expandtab shiftwidth=2 softtabstop=2 "python-compatible tab setup
set foldmethod=indent foldlevel=99 "python compat folding
set number "line numbers
set laststatus=2

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate

call pathogen#infect()

nmap j gj
nmap k gk
nmap \q :nohlsearch<CR>
nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>
nmap <C-n> :bNext<CR>
nmap <C-p> :bprevious<CR>
nmap ; :CtrlPBuffer<CR>
nmap \e :NERDTreeToggle<CR>

nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>

set incsearch
set ignorecase
set smartcase
set hlsearch

let g:ctrlp_map = '<Leader>t'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0
let g:Powerline_symbols = 'fancy'
