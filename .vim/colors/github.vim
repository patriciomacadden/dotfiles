set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "github"
set t_Co=256

hi Normal ctermfg=236 guifg=#333333
hi Visual ctermbg=152 guifg=#b2cce6

hi Comment ctermfg=102 guifg=#969896
hi Constant ctermfg=31 guifg=#0086b3
hi Function ctermfg=97 guifg=#795da3
hi Identifier ctermfg=236 guifg=#333333
hi Number ctermfg=31 guifg=#0086b3
hi PreProc ctermfg=125 guifg=#a71d5d
hi Statement ctermfg=125 guifg=#a71d5d
hi String ctermfg=160 guifg=#df5000
hi Todo ctermbg=231 ctermfg=102 guibg=#ffffff guifg=#969896
hi Type ctermfg=97 guifg=#795da3

hi xmlTag ctermfg=236 guifg=#333333
hi xmlTagName ctermfg=71 guifg=#63a35c

hi link htmlTag xmlTag
hi link htmlTagName xmlTagName

hi htmlArg ctermfg=97 guifg=#795da3
hi htmlComment ctermfg=236 guifg=#333333
hi htmlSpecialTagName ctermfg=71 guifg=#63a35c

hi cssBraces ctermfg=236 guifg=#333333
hi cssTagName ctermfg=71 guifg=#63a35c

hi javaScriptBraces ctermfg=236 guifg=#333333
hi javaScriptIdentifier ctermfg=125 guifg=#a71d5d
hi javaScriptMember ctermfg=31 guifg=#0086b3
hi javaScriptNumber ctermfg=31 guifg=#0086b3
