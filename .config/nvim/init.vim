call plug#begin()

Plug 'kristijanhusak/vim-hybrid-material'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-ruby/vim-ruby'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-speeddating'
Plug 'danro/rename.vim'
Plug 'itchyny/lightline.vim'
Plug 'raimondi/delimitmate'

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
colorscheme hybrid_material

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
  \ 'colorscheme': 'jellybeans'
  \ }

" nerdcommenter
let g:NERDSpaceDelims=1
let g:NERDDefaultAlign='left'

