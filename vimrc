set number " Sets the line numbers
set relativenumber "This turns on relative numbering
set numberwidth=4 "Set the line numbers to 4 spaces
filetype plugin on
filetype indent on
syntax enable
set encoding=utf-8
set cursorline " Shows a line on the current line your on
set showmatch " Highlights matching bracket
colorscheme base16-ocean " Vim Colorscheme
set ignorecase " Ignore case when searching
set smartcase " When searching try to be smart about cases 
set hlsearch " Highlight search results
set incsearch " Makes search act like search in modern browsers
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set foldenable "enable folding
set foldlevelstart=0 "open most folds by default
set foldnestmax=1 " max nested folds
set foldmethod=syntax " fold based on indent level
let mapleader = " " "New map leader binding

"Leaves the insert mode to normal mode
inoremap jk <ESC>


" Arrows are unvimlike 
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Normal mode mappings
nnoremap <Tab> za  
nnoremap <F6> <C-i>
noremap Y y$
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'


" Leader mappings 
nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>w :write<CR>
nnoremap <Leader>q :quit<CR>

" Set tab width
set tabstop=4
set softtabstop=4

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Linebreak on 500 characters
set lbr
set tw=500

" Go-vim plugin
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1

"Ctrl-p speed improvements and ignoreing some files
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" vim-javascript settings
let g:javascript_plugin_flow = 1

" vim-jsx
let g:jsx_ext_required = 0

" Nerdtree plugin

" bind ctrl m to toggle NERDtree
map <C-n> :NERDTreeToggle<CR>
