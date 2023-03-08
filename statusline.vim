" note: the '\' character is for a literal whitespace.

function! ShowFileType()
    if &ft==#'netrw'
        return ''
    endif
    return '%y'
endfunction

function! ShowBufferPath()
    if &ft==#'netrw'
        return '%F'
    endif
    return '%t'
endfunction

function! ShowModifiedIfFile()
    if &ft==#'netrw'
        return ''
    endif
    return '%m'
endfunction

" reset statusline to nothing.
set statusline=

" filetype.
set statusline+=%(%#StatusLineFileType#\ %{%ShowFileType()%}\ %*%)

" filename.
" set statusline+=\ %F
set statusline+=\ %{%ShowBufferPath()%}

" show [+] if modified.
set statusline+=%(\ %#StatusLineModified#\ %{%ShowModifiedIfFile()%}\ %*%)

" expand space so next items are on the right side.
set statusline+=\%=

" line-count / total-line-count.
set statusline+=%(\%l/%L\ %)

