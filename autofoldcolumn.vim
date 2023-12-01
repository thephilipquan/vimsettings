augroup AutoFoldColumn
    autocmd!
    autocmd BufEnter * call s:F()
augroup END

function! s:F()
    let l:maxDepth = 0
    for i in range(0, line('$'))
        let l:current = foldlevel(i)
        if l:current > l:maxDepth
            let l:maxDepth = l:current
        endif
    endfor

    if l:maxDepth == 0
        let &foldcolumn = 0
    else
        let &foldcolumn = l:maxDepth + 1
    endif
    set foldlevel=99
endfunction

