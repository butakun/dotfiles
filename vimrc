set encoding=utf8

execute pathogen#infect()
syntax on
filetype plugin indent on

set backspace=indent,eol,start
inoremap kj <ESC>

autocmd FileType javascript,json setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType c,cpp setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType html setlocal shiftwidth=2 tabstop=2 expandtab

let g:airline_powerline_fonts=1
