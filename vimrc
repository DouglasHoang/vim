"Using vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}


Plugin 'surround.vim'
Plugin 'tpope/vim-repeat'
Plugin 'ctrlp.vim'
"Plugin 'leafgarland/typescript-vim'
Plugin 'posva/vim-vue'
Plugin 'jodosha/vim-godebug'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-syntastic/syntastic'
"Plugin 'maksimr/vim-jsbeautify'
Plugin 'moll/vim-node'
Plugin 'chriskempson/base16-vim'
Plugin 'skielbasa/vim-material-monokai'
Plugin 'mxw/vim-jsx'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
"Plugin 'jparise/vim-graphql'
Plugin 'fatih/vim-go'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



set number " Sets the line numbers
set relativenumber "This turns on relative numbering
set numberwidth=4 "Set the line numbers to 4 spaces
"filetype indent plugin on " Language-dependent indentation, syntax coloring, and other functionality
filetype on
filetype plugin indent on
syntax on 
set encoding=utf-8
set cursorline " Shows a line on the current line your on
set showmatch " Highlights matching bracket
set ignorecase " Ignore case when searching
set smartcase " When searching try to be smart about cases 
set hlsearch " Highlight search results
set incsearch " Makes search act like search in modern browsers
"set ai "Auto indent
set expandtab " always use spaces instead of tabs
"set smarttab "Smart indent

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

set nowrap "Doesn't wrap text
set shiftwidth=2 " spaces per tab (when shifting)
set tabstop=2 " spaces per tab
set softtabstop=2
set list listchars=tab:\ \ ,trail:· "idk what this is
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

" copy and pasting on to clipboar
vnoremap <C-c> :w !pbcopy<CR><CR>

" Set tab width
"set tabstop=4
"set softtabstop=4

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Linebreak on 500 characters
set lbr
set tw=500

"Ctrl-p speed improvements and ignoreing some files
"
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\'
" Set no max file limit
let g:ctrlp_max_files = 0
" Search from current directory instead of project root
let g:ctrlp_working_path_mode = 0


" Nerdtree plugin

" bind ctrl n to toggle NERDtree
map <C-n> :NERDTreeToggle<CR>

" indentLine plugin
let g:indentLine_color_term = 239

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']

" colorscheme
set background=dark
set termguicolors
colorscheme material-monokai

" prettier
let g:prettier#config#semi = 'false'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

" Go-vim plugin
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_experimental = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
autocmd FileType go nmap <Leader>i <Plug>(go-info)
let g:go_auto_type_info = 1
autocmd FileType go nmap <leader>t  <Plug>(go-test)

" Vue-plugin
let g:vue_disable_pre_processors=1
autocmd FileType vue syntax sync fromstart

" YouCompleteMe turn off on vue files
let g:ycm_filetype_blacklist = { 'vue': 1 }
