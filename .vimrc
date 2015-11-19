" ========== In the Beginning... Was the Command Line ==========

set nocompatible                " break compatibility with vi
filetype off

" ========== Vundle Configuration ==========

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" install Powerline
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" install Python-mode
Bundle 'klen/python-mode'

" install NERD Commenter
Bundle 'scrooloose/nerdcommenter'

" ========== General Configuration ==========

set hidden                      " buffers can exist in background

set spell                       " enable in-line spell check(SHORTCUT: z=)
set spelllang=en
hi clear SpellBad               " change the highlighting style for bad spellings into underline
hi SpellBad cterm=underline

set number
set showmode

set paste                       " pasting without auto indent
set autoread                    " reload files modified outside of Vim
set backspace=eol,start,indent  " configure backspace to act normal(unlike Vim)
set cursorline                  " highlight current line

" ========== History ==========

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
set copyindent

autocmd filetype html setlocal shiftwidth=2 tabstop=2

syntax on
filetype indent on
filetype plugin on
filetype plugin indent on

" ========== PEP 8 ==========

set textwidth=79
set formatoptions+=t

" ========== Regular Expressions ==========

set magic

" ========== Color Scheme ==========

set t_Co=256                    " enable 256 colors in Vim

" ========== Searching & Matching ==========

set showcmd                     " show partial commands
set showmatch                   " show matching brackets
set ignorecase
set smartcase

set incsearch                   " incremental search
set hlsearch
set noerrorbells
set novisualbell

" ========== Miscellaneous/Fancy Stuff ==========

set foldenable                  " enable folding
set foldlevelstart=10           " open most folds by default
set foldmethod=indent           " fold based on indent level(because Python)

set wildmenu
set wildmode=list:longest,full

set wildignore=*.o,*~,*.pyc     " ignore compiled files
set wildignore+=*ds_store*

set listchars=tab:▸\ ,trail:·   " show tabs and trailing spaces
set list

set mouse=a
set ruler                       " display line number, column number & other stuff
set undofile                    " create <FILENAME>.un~/enable undo even after closing and reopening a file
set cino=(0                     " have the parameters in the unclosed parentheses align on ENTER

