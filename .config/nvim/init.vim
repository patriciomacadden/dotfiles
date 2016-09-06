call plug#begin()

Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'

call plug#end()

" 2 moving around, searching and patterns
set whichwrap=<,>,[,]

" 4 displaying text
set nowrap
set list
set number

" 5 syntax, highlighting and spelling
colorscheme hybrid_material
let g:hybrid_custom_term_colors=1
let g:hybrid_reduced_contrast=1

" 11 messages and info
set showmode
set ruler

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

