" ========== In the Beginning... Was the Command Line ==========

" break compatibility with vi
set nocompatible

" buffers can exist in background
set hidden

" enable in-line spell check (SHORTCUT: z + =)
set spell
set spelllang=en

" enable line numbers
set number

" display the current mode
set showmode

" pasting without auto indent
set paste

" reload files modified outside of Vim
set autoread

" configure backspace to act normal(unlike Vim)
set backspace=eol,start,indent

" highlight current line
set cursorline

" ========== History ==========

" save more in undo history
set history=1000
set undolevels=1000

" ========== Turn Off Swap Files ==========

set noswapfile
set nobackup
set nowb

" ========== Indentation ==========

set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent

" copy previous indent on enter
set copyindent

" setup 2 spaces for html files
autocmd filetype html setlocal shiftwidth=2 tabstop=2

syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" ========== PEP 8 ==========

set textwidth=79
set formatoptions+=t

" ========== Regular Expressions(Piertotum Locomotor!) ========== 

set magic

" ========== Color Scheme ==========

" enable 256 colors in Vim
set t_Co=256

" ========== Searching & Matching ==========

" show partial commands
set showcmd

" show matching brackets
set showmatch

" do case insensitive matching
set ignorecase
set smartcase

" incremental search
set incsearch

" highlight searches
set hlsearch

set noerrorbells
set novisualbell

" ========== Miscellaneous/Fancy Stuff ==========

" enable folding
set foldenable

" open most folds by default
set foldlevelstart=10

" fold based on indent level(because Python)
set foldmethod=indent

" display line number, column number & other stuff
set ruler

" turn on the wild things
set wildmenu
set wildmode=list:longest,full

" ignore compiled files
set wildignore=*.o,*~,*.pyc
set wildignore+=*ds_store*

" show tabs and trailing spaces
set listchars=tab:→\ ,trail:·
set list

" enable mouse in all modes
set mouse=a

" have the parameters in the unclosed parentheses align on ENTER
set cino=(0
