set nocompatible
filetype off

" Vundle Configuration

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'klen/python-mode'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


set hidden
set number
set showmode
set paste
set autoread
set backspace=eol,start,indent
set cursorline

set spell
set spelllang=en
hi clear SpellBad
hi SpellBad cterm=underline

set history=1000
set undolevels=1000

" Turn off swap files
set noswapfile
set nobackup
set nowb

" Indentation options
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set copyindent

" Custom style for HTML pages!
autocmd filetype html setlocal shiftwidth=2 tabstop=2

syntax on
filetype indent on
filetype plugin on
filetype plugin indent on

" PEP 8
set textwidth=79
set formatoptions+=t

" Mostly perl-compatible regular expressions
set magic

" Add more fancy colours
set t_Co=256

" Search and matching options
set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set hlsearch
set noerrorbells
set novisualbell

" Enable folding
set foldenable
set foldlevelstart=10
set foldmethod=indent

set wildmenu
set wildmode=list:longest,full

set wildignore=*.o,*~,*.pyc
set wildignore+=*ds_store*

set listchars=tab:▸\ ,trail:·
set list

set mouse=a
set ruler
set cino=(0

" Undo options even after you close the file and reopen it!
set undofile

" Powerline configuration
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

"Python Syntastic settings
let g:syntastic_python_python_exec = '/usr/bin/python'
let g:syntastic_python_checkers = ['pylint']

