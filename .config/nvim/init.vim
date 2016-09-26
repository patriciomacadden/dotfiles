call plug#begin()

Plug 'ap/vim-css-color'
Plug 'chriskempson/base16-vim'
Plug 'dkprice/vim-easygrep'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-startify'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-speeddating'
Plug 'vim-ruby/vim-ruby'

call plug#end()

" reload nvim when saving this file
autocmd! bufwritepost init.vim source %

" 2 moving around, searching and patterns
set whichwrap=<,>,[,]

" 4 displaying text
set nowrap
set list
set number

" 5 syntax, highlighting and spelling
set background=dark
colorscheme base16-tomorrow-night

" 11 messages and info
set noshowmode

" 13 editing text
set showmatch

" 14 tabs and indenting
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set expandtab
set autoindent
set smartindent

" fzf.vim
map <c-p> :Files<enter>

" lightline
let g:lightline = {
  \ 'colorscheme': 'Tomorrow_Night_Bright'
  \ }

