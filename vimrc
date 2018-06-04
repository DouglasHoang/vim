set number
set relativenumber "This turns on relative numbering
set numberwidth=4 "Set the line numbers to 4 spaces

"Leaves the insert mode to normal mode
inoremap jk <ESC>

let mapleader = "<Space>"

filetype plugin on
filetype indent on
syntax enable
"syntax on
set encoding=utf-8

" Shows a line on the current line your on
set cursorline

" Highlights matching bracket
set showmatch

" Vim Colorscheme
"let base16colorspace=256
colorscheme base16-ocean

"let base16colorspace=256  " Access colors present in 256 colorspace

" Arrows are unvimlike 
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Set tab width
set tabstop=4
set softtabstop=4


"Beautify Go syntax
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1

"Ctrl-p speed improvements and ignoreing some files
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set foldenable "enable folding
set foldlevelstart=0 "open most folds by default
set foldnestmax=1 " max nested folds
set foldmethod=syntax " fold based on indent level
nnoremap <space> za " space open/closes folds


