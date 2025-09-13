
"----------------------------------------------------------------
" 1. General settings
"----------------------------------------------------------------
" Disable vi compatibility
set nocompatible

" Enable local .vimrc config
set exrc
set secure

" Lines of memory to remember
set history=10000

" Leader key to add extra key combinations
let g:mapleader = ' '

" Time delay on <Leader> key
set timeoutlen=3000 ttimeoutlen=100

" Update time
set updatetime=250

" Trigger InsertLeave autocmd
inoremap jj <Esc>

" No need for Ex mode
nnoremap Q <NOP>

" Syntax highlighting
syntax enable

" Set X lines to the cursor when moving vertically
set scrolloff=0

" Always show mode
set showmode

" Show command keys pressed
set showcmd

" Enable the WiLd menu
set wildmenu

" Show the current position
set ruler

" Command bar height
set cmdheight=2

" Backspace works on Insert mode
set backspace=eol,start,indent

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set matchtime=2

" No annoying sound on errors
set noerrorbells
set novisualbell

" Mouse
set mouse=

" Highlight cursor line and cursor column
set cursorline
set nocursorcolumn

" Always show the status line
set laststatus=2

" Change the cursor shape
if &term != "linux"
	let &t_SI = "\<Esc>[6 q"
	let &t_SR = "\<Esc>[4 q"
	let &t_EI = "\<Esc>[2 q"
endif

" Omni completion
if has('autocmd') && exists('+omnifunc')
autocmd Filetype *
	\ if &omnifunc == "" |
	\     setlocal omnifunc=syntaxcomplete#Complete |
	\ endif
endif

" Fix italics issue
if !has("nvim")
	let &t_ZH="\e[3m"
	let &t_ZR="\e[23m"
endif

" Disable swap files
set noswapfile

" No backup (use Git instead)
set nobackup

" Prevents automatic write backup
set nowritebackup

" Use Unix as the standard file type
set fileformats=unix,dos,mac

" Autoread a file when it is changed from the outside
set autoread

" Enable filetype plugins
filetype plugin on
filetype indent on

" Allows to use Ctrl-s and Ctrl-q as keybinds
" Restore default behaviour when leaving Vim.
silent !stty -ixon
autocmd VimLeave * silent !stty ixon

" Save the current buffer
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

" Save all buffers
nnoremap <C-S> :bufdo update<CR>
inoremap <C-S> <Esc>:bufdo update<CR>a

" Select all
nnoremap <C-a> ggVG

" Enable autoindent & smartindent
set autoindent
set smartindent

" Use spaces as tabs
set expandtab

" Be smart when using tabs
set smarttab

" Tab size (in spaces)
set shiftwidth=2
set tabstop=2

" Remap indentation
nnoremap <TAB> >>
nnoremap <S-TAB> <<

" Specify which commands wrap to another line
set whichwrap+=<,>,h,l

" Wrap lines into the window
set wrap

" Stop automatic wrapping
set textwidth=0

" Listings don't pause
set nomore

" Show line numbers
"set number
"set numberwidth=2

" Set relative line numbers
"set relativenumber

" Join / split lines
nnoremap <C-j> J
inoremap <C-j> <Esc>Ja
nnoremap <C-k> i<CR><Esc>

" Folding
set foldmethod=marker

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Search, wrap around the end of the buffer
set wrapscan

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Maximum amount of memory in Kbyte used for pattern matching
set maxmempattern=1000

" Insert brackets and backslash faster
"inoremap [ []<left>
"inoremap ( ()<left>
"inoremap { {}<left>

" Allows buffers with unsaved changes to be hidden instead of forcing to save changes
set hidden

" Move between buffers

" --- Next buffer ---
nnoremap <C-l> :bnext<CR>
nnoremap <M-l>     :bnext<CR>
nnoremap <M-Right> :bnext<CR>
inoremap <M-l>     <C-o>:bnext<CR>
inoremap <M-Right> <C-o>:bnext<CR>

" --- Previous buffer ---
nnoremap <C-h> :bprev<CR>
nnoremap <M-h>     :bprev<CR>
nnoremap <M-Left>  :bprev<CR>
inoremap <M-h>     <C-o>:bprev<CR>
inoremap <M-Left>  <C-o>:bprev<CR>

" Ignore case when autocompletes when browsing files
set fileignorecase

" Windows like selection behavior
set keymodel=startsel
set selectmode=

" Ctrl+Shift+word selection
" Normal: start a fresh selection and extend by word
nnoremap <C-S-Left>  vb
nnoremap <C-S-Right> ve

" Visual/Select: keep extending the current selection by word
xnoremap <C-S-Left>  b
xnoremap <C-S-Right> e

" Insert: switch to Select mode, extend by word; typing will replace
inoremap <C-S-Left>  <Esc>vb
inoremap <C-S-Right> <Esc>ve



"----------------------------------------------------------------
" 2. Plugins
"----------------------------------------------------------------

set nomodeline

call plug#begin('~/.vim/plugged')
" Alias the repo so PlugInstall output won't start with 'vim:'
Plug 'catppuccin/vim', { 'as': 'catppuccin-theme' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" --- Theme (after plug#end) ---
if has('termguicolors') | set termguicolors | endif

colorscheme catppuccin_mocha


" --- fzf keys ---
let mapleader = ' '
nnoremap <leader>f :Files<CR>
nnoremap <C-P> :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>

