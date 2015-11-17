" ========== General Configuration ==========

set number
set visualbell
set history=1000
set syntax on

" Configure backspace
set backspace=eol,start,indent

" ========== Indentation ==========

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

filetype plugin on
filetype indent on

" ========== PEP 8 ==========

set textwidth=79
set formatoptions+=t

" ========== Regular Expressions(CAN HAZ MAGIC!) ========== 

set magic

" ========== Miscellaneous/Fancy stuff ==========

" Show matching brackets 
set showmatch

" Add extra margin
set foldcolumn=1

" Display line number, column number & other stuff
set ruler

" Turn on wildmenu
set wildmenu
set wildmode=list:longest,full

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
set wildignore+=*DS_Store*

