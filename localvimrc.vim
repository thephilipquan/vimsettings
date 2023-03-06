augroup SourceLocalVimrc
    autocmd!
    autocmd VimEnter * call F()
augroup END

function F()
    let path = expand("%:p:h")."/.vimrc"
    try
        execute "source ".l:path
        echomsg "Successfully loaded local vimrc."
    catch
    endtry
endfunction

" TODO
" make it check if there is a super.vimrc.
" if there is, check one directory up.
