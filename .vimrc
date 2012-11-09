syntax on "syntax
filetype on "filetype detection
filetype plugin indent on "filetype-based indentation
set tabstop=2 expandtab shiftwidth=2 softtabstop=2 "python-compatible tab setup
set foldmethod=indent foldlevel=99 "python compat folding
set number "line numbers

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate

call pathogen#infect()
