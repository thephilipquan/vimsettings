" note: the '\' character is for a literal whitespace.

" reset statusline to nothing.
set statusline=

" filetype.
set statusline+=%#StatusLineFileType#\ %y\ %*

" filename.
set statusline+=\ %F

" show [+] if modified.
set statusline+=%(\ %#StatusLineModified#\ %m\ %*%)

" expand space so next items are on the right side.
set statusline+=\%=

" line-count / total-line-count.
set statusline+=\%l/%L

" line percentage
set statusline+=\ (%p%%)

