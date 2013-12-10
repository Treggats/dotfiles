"remap the escape key
inoremap jk <ESC>

"remap the leader key
let mapleader = ","

syntax on
set encoding=utf-8

"set tab indent
set tabstop=2
set shiftwidth=2
set expandtab

set autoindent

"easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"options for vundle
set nocompatible " be iMproved
filetype off " required
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Bundles
"vim-tmux navigation
Bundle 'christoomey/vim-tmux-navigator'

"shows syntax errors on several types of files
Bundle 'scrooloose/syntastic'

" Tab to indent or autocomplete depending on context
Bundle 'ervandew/supertab'

" Syntax for nginx
Bundle 'mutewinter/nginx.vim'

" Makes css colors show up as their actual colors, works better with CSApprox or macvim
Bundle 'ap/vim-css-color'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline
" "
" " The ultimate vim statusline utility
" "
" " You'll need a powerline patched font.
" " You should probably use inconsolata-g (included in fonts directory)
" "
" " If not, you can patch your own.
" " See: https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher
" " You'll probably need this too:
" https://github.com/jenius/Fontforge-Installer
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Lokaltog/vim-powerline'

let g:Powerline_symbols = 'fancy'
let g:Powerline_stl_path_style = 'relative'
"call Pl#Theme#RemoveSegment('fugitive:branch')
"call Pl#Theme#RemoveSegment('fileformat')
"call Pl#Theme#RemoveSegment('fileencoding')
"call Pl#Theme#RemoveSegment('scrollpercent')
autocmd FocusGained * call Pl#UpdateStatusline(1)
autocmd FocusLost * call Pl#UpdateStatusline(0)

filetype plugin indent on

execute pathogen#infect()
