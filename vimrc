inoremap l; <ESC> " remap the escape key to 'l;'
let mapleader = "\<Space>"
let maplocalleader = ","

let g:python_host_skip_check=1
let g:loaded_python3_provider=1

syntax on
set background=dark
filetype indent on
set tabstop=4
set shiftwidth=4
set expandtab

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

" Also, this installs to /usr/share/vim/vimfiles, which may not be in
" your runtime path (RTP). Be sure to add it too, e.g:
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

set textwidth=100
set colorcolumn=+1
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

:nmap ,t phpunit %<cr>
:nmap ,pt py.test -x --ff --pep8 %<cr>

source ~/.plugrc

call plug#begin()

Plug 'sheerun/vimrc'
Plug 'sheerun/vim-polyglot'
Plug 'sjl/vitality.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'grassdog/tagman.vim'

" Really nice prompt
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='powerlineish'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''

" Press v over and over again to expand selection
Plug 'terryma/vim-expand-region'
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Awesome autocompletion
function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }

" Lightning fast :Ag searcher
Plug 'rking/ag.vim'

" Ruby extensions
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-rake', { 'for': 'ruby' }
Plug 'kana/vim-textobj-user', { 'for': 'ruby' }
" var, vir
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-unimpaired'

" Allow to :Rename files
Plug 'danro/rename.vim'

" Automatically find root project directory
Plug 'airblade/vim-rooter'
let g:rooter_disable_map = 1
let g:rooter_silent_chdir = 1

" Expand / wrap hashes etc.
Plug 'AndrewRadev/splitjoin.vim'
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>


" Plug 'JuliaLang/julia-vim', { 'for': 'julia' }
Plug 'jnwhiteh/vim-golang', { 'for': 'go' }
Plug 'Blackrush/vim-gocode', { 'for': 'go' }
Plug 'moll/vim-node', { 'for': 'javascript' }

Plug 'bitc/vim-hdevtools', { 'for': 'haskell' }
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

Plug 'derekelkins/agda-vim', { 'for': 'agda' }
imap <buffer> \forall ∀
imap <buffer> \to →
imap <buffer> \lambda λ
imap <buffer> \Sigma Σ
imap <buffer> \exists ∃
imap <buffer> \equiv ≡
imap <buffer> \then ⇒
imap <buffer> \N ℕ

" Navitate freely between tmux and vim
Plug 'christoomey/vim-tmux-navigator'

" Run ruby tests with vimux
Plug 'benmills/vimux'
Plug 'skalnik/vim-vroom'
Plug 'tpope/vim-dispatch'
let g:vroom_use_vimux = 1
let g:vroom_write_all = 1
let g:vroom_use_binstubs = 1
let g:vroom_use_colors = 0
let g:vroom_rspec_version = "3.x"
let g:VimuxHeight = "40"

" Nice column aligning with <Enter>
Plug 'junegunn/vim-easy-align'
vmap <Enter> <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)

" NERDTree
Plug 'scrooloose/nerdtree'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" I need to revisit those plugins before enabling:
" Plug 'tpope/vim-projectionist'
" Plug 'SirVer/ultisnips'
" let g:UltiSnipsExpandTrigger="<C-j>"
" let g:UltiSnipsJumpForwardTrigger="<C-j>"
" let g:UltiSnipsJumpBackwardTrigger="<C-k>"
" Plug 'honza/vim-snippets'
" Plug 'xuhdev/SingleCompile'
" nmap <Leader>d :SCCompile<cr>
" nmap <Leader>e :SCCompileRun<cr>
" Vim flow caused some issues with parsing last time
" Plug 'facebook/vim-flow'
" Plug 'vim-scripts/SyntaxRange'
" Plug 'rking/pry-de', { 'rtp': 'vim' }
" Plug 'AndrewRadev/switch.vim'
" nmap <Leader><Tab> :Switch<CR>

Plug 'michaeljsmith/vim-indent-object' " ii / ai

" For more reliable indenting and performance
set foldmethod=indent
set fillchars="fold: "

" Nice file browsing with -
Plug 'eiginn/netrw'
let g:netrw_altfile = 1
Plug 'tpope/vim-vinegar'

" Set nice 80-characters limiter
" execute "set colorcolumn=" . join(range(81,335), ',')
" hi ColorColumn guibg=#262626 ctermbg=235

" Allow for adding github comments
Plug 'mattn/webapi-vim'
Plug 'moznion/github-commit-comment.vim'
command! -nargs=* Comment call github_commit_comment#comment_line(<f-args>)

" Better search tools
Plug 'vim-scripts/IndexedSearch'
Plug 'vim-scripts/SmartCase'
Plug 'vim-scripts/gitignore'

" EditorConfig vim plugin
Plug 'editorconfig/editorconfig-vim'
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

call plug#end()

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader><Leader> V
nmap <Leader>b :make<CR>
nnoremap <Leader><Tab> <C-^>
nnoremap <Leader>y :!annotate expand('%:p') " what?

nnoremap <Leader>o :FZF<CR>

vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

nnoremap <CR> G
nnoremap <BS> gg
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :Sayonara<CR>
nnoremap <Leader>c :Sayonara!<CR>
nnoremap <Leader>s :wq<CR>
nnoremap <Leader>v V
nnoremap <Leader>g gf

" Remove trailing whitespaces
nnoremap <silent> <Leader><BS> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:w<CR>

nnoremap H 0
nnoremap L $

silent! colorscheme wombat256mod

command! -bar Tags if !empty(tagfiles()) | call fzf#run({
\   'source': "sed '/^\\!/d;s/\t.*//' " . join(tagfiles()) . ' | uniq',
\   'sink':   'tag',
\ })

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
cmap flake w !flake8 %

set relativenumber
