set relativenumber "This turns on relative numbering
set numberwidth=4 "Set the line numbers to 4 spaces

"Leaves the insert mode to normal mode
inoremap jk <ESC>

let mapleader = "<Space>"

filetype plugin indent on
syntax on
set encoding=utf-8

" Arrows are unvimlike 
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

