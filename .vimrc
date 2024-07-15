
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
let g:mapleader = ','

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
set mouse=a

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
set number
set numberwidth=2

" Set relative line numbers
set relativenumber

" Join / split lines
nnoremap <C-j> J
inoremap <C-j> <Esc>Ja
nnoremap <C-k> i<CR><Esc>

" Folding
set foldmethod=marker

" Move the cursor to the line start
inoremap <C-h> <C-O>0

" Move the cursor to the line end
inoremap <C-l> <C-O>$

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
inoremap [ []<left>
inoremap ( ()<left>
inoremap { {}<left>

" Allows buffers with unsaved changes to be hidden instead of forcing to save changes
set hidden

" Move between buffers
nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>

" Ignore case when autocompletes when browsing files
set fileignorecase

"----------------------------------------------------------------
" 2. Plugins 
"----------------------------------------------------------------

" Install vim-plug automatically, if not installed yet
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Color theme
call plug#begin()

Plug 'gerardbm/vim-atomic'

call plug#end()

let g:atomic_matchparen = 0
colorscheme atomic

