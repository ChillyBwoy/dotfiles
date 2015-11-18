syntax enable

set nobackup
set noswapfile
set nowrap                  " hate wrapping for tiny windows. It makes code absolute unreadable
set number                  " Show line numbers
set nostartofline           " Don’t reset cursor to start of line when moving around.
set colorcolumn=80          " bad and extrabad line sizes
set showmode                " Show the current mode
set clipboard=unnamed       " use os x clipboard
set backspace=2             " use c-w and c+u
set showcmd                 " Display incomplete commands.
set scrolloff=8             " Start scrolling when we're 8 lines away from margins

" Encoding
set encoding=utf-8 nobomb
set fileencoding=utf-8 " Use UTF-8 without BOM

" # Search
set incsearch
set ignorecase " Ignore case of searches
set hlsearch   " Highlight searches

" # Ident
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set autoindent
set smartindent
set pastetoggle=<F2>  " to fix weird behawiour on paste, etc
set list              " show invisibles
set lcs=tab:▸\ ,eol:¬ " Use the same symbols as TextMate for tabstops and EOLs

