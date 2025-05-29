" Spelling mistakes will also be colored red if you uncomment the colors
hi SpellBad cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellLocal cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellRare cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellCap cterm=underline ctermfg=203 guifg=#ff5f5f

" Set intuitive tab width
set autoindent expandtab tabstop=2 shiftwidth=2

" Show where you are looking at at search
set ruler
set incsearch

" Line number and relative all the others
set number
set relativenumber

" Remove trainling spaces from every saved file
autocmd BufWritePre * :%s/\s\+$//e
