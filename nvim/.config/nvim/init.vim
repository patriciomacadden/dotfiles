call plug#begin()

Plug 'airblade/vim-helptab'
Plug 'ap/vim-css-color'
Plug 'chriskempson/base16-vim'
Plug 'dkprice/vim-easygrep'
Plug 'elixir-lang/vim-elixir'
Plug 'fatih/vim-go'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-slash'
Plug 'mhinz/vim-startify'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'

call plug#end()

" reload nvim when saving this file
autocmd! bufwritepost init.vim nested source %

" 2 moving around, searching and patterns
set whichwrap=<,>,[,]

" 4 displaying text
set nowrap
set list
set number

" 5 syntax, highlighting and spelling
set background=dark
if has("termguicolors")
  set termguicolors
endif
colorscheme base16-tomorrow-night

" 6 multiple windows
set splitbelow
set splitright

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

" tabs
map <leader><left> :tabp<enter>
map <leader><right> :tabn<enter>

" lightline
let g:lightline = {
  \ 'colorscheme': 'Tomorrow_Night_Bright'
  \ }

" syntastic
let g:syntastic_check_on_open=1

