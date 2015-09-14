" reload .vimrc automatically
autocmd! bufwritepost .vimrc source %

" indentation configuration
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

" show tabs and trailing spaces
set list
set listchars=tab:>-,trail:-

" linewidth (endless)
set textwidth=0

" do not wrap lines automatically
set nowrap

function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction

" remap the tab key to select action with InsertTabWrapper
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

" case insensitive searches
"set ignorecase
" incremental search
set incsearch
" show mode
set showmode
" show line and column information
set ruler
" show matching brackets
set showmatch
set formatoptions=tcqor
set whichwrap=b,s,<,>,[,]

" always show the tabline
set showtabline=2

" smart home
noremap  <expr> <Home> (col('.') == matchend(getline('.'), '^\s*')+1 ? '0'  : '^')
imap <Home> <C-o><Home>
"noremap  <expr> <End>  (col('.') == match(getline('.'),    '\s*$')   ? '$'  : 'g_')
"vnoremap <expr> <End>  (col('.') == match(getline('.'),    '\s*$')   ? '$h' : 'g_')
"imap <End>  <C-o><End>

" fix backspace error
set backspace=2

" colorscheme
set background=dark
colorscheme solarized
syntax on

" Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

