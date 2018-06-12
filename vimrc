set number " Sets the line numbers
set relativenumber "This turns on relative numbering
set numberwidth=4 "Set the line numbers to 4 spaces
filetype indent plugin on " Language-dependent indentation, syntax coloring, and other functionality
syntax on 
set encoding=utf-8
set cursorline " Shows a line on the current line your on
set showmatch " Highlights matching bracket
colorscheme base16-ocean " Vim Colorscheme
set ignorecase " Ignore case when searching
set smartcase " When searching try to be smart about cases 
set hlsearch " Highlight search results
set incsearch " Makes search act like search in modern browsers
set ai "Auto indent
set expandtab " always use spaces instead of tabs
set smarttab "Smart indent
"set wrap "Wrap lines
set shiftwidth=2 " spaces per tab (when shifting)
set tabstop=2 " spaces per tab
set foldenable "enable folding
set foldlevelstart=0 "open most folds by default
set foldnestmax=1 " max nested folds
set foldmethod=syntax " fold based on indent level
let mapleader = " " "New map leader binding

"Leaves the insert mode to normal mode
inoremap jk <ESC>

if exists('&belloff')
  set belloff=all                     " never ring the bell for any reason
endif

if has('linebreak')
  set breakindent                     " indent wrapped lines to match start
  if exists('&breakindentopt')
    set breakindentopt=shift:2        " emphasize broken lines by indenting them
  endif
endif

if has('gui')
  " Turn off scrollbars. (Default on macOS is "egmrL").
  set guioptions-=L
  set guioptions-=R
  set guioptions-=b
  set guioptions-=l
  set guioptions-=r
endif

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

" Move through splits
noremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l



" Leader mappings 
nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>w :write<CR>
nnoremap <Leader>q :quit<CR>
nnoremap <Leader>x :xit<CR>
nnoremap <Leader>o :only<CR>
" <Leader><Leader> -- Open last buffer.
nnoremap <Leader><Leader> <C-^>


" Set tab width
"set tabstop=4
"set softtabstop=4

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
let g:go_fmt_command = "goimports"
let g:go_fmt_experimental = 1

"Ctrl-p speed improvements and ignoreing some files
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" vim-javascript settings
let g:javascript_plugin_flow = 1

" vim-jsx
let g:jsx_ext_required = 0

" Nerdtree plugin

" bind ctrl m to toggle NERDtree
map <C-n> :NERDTreeToggle<CR>


" indentLine plugin
let g:indentLine_color_term = 239

" YouCompleteMe
" Only turn on for javascript
let g:ycm_filetype_whitelist = {'javascript.jsx': 1}
