" MV statusbar
let g:currentmode={
    \ 'n'      : 'NORMAL ',
    \ 'v'      : 'VISUAL ',
    \ 'V'      : 'VISUAL-LINE ',
    \ "\<C-v>" : 'VISUAL-BLOCK ',
    \ 'i'      : 'INSERT ',
    \ 'c'      : 'COMMAND ',
    \}

" Show currentmode with User1 settings
" set statusline+=%1*\ %{toupper(g:currentmode[mode()])} 
set statusline+=%1*\ %{g:currentmode[mode()]} 
set statusline+=\%2*    " Set to User2 settings
set statusline+=\ %t    " Show filetype

set statusline+=%=      " Move items to right

set statusline+=\ %l:   " Show line number
set statusline+=\%c     " Show column number
set statusline+=\ %1*   " Set to User1 settings
set statusline+=\ %p    " Show percent number
set statusline+=\%%     " Add percent symbol
set statusline+=\       " Add space 

hi User1 ctermbg=white ctermfg=black cterm=bold
hi User2 ctermbg=darkgrey ctermfg=black cterm=bold
