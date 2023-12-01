augroup SourceLocalVimrc
    autocmd!
    autocmd BufEnter * call s:F()
augroup END

function! s:F()
    let path = expand("%:p:h")."/.vimrc"
    try
        execute "source ".l:path
    catch
    endtry
endfunction

" TODO
" make it check if there is a super.vimrc.
" if there is, check one directory up.
