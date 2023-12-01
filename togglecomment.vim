if exists('g:toggle_comment')
    finish
endif

let g:toggle_comment = 1

let s:comment_map = {
            \ 'c': '\/\/',
            \ 'cpp': '\/\/',
            \ 'java': '\/\/',
            \ 'make': '#',
            \ 'sh': '#',
            \ 'sql': '#',
            \ 'python': '#',
            \ 'vim': '"',
            \ }

function! s:CommentBeginningStrategy(symbol)
    return 'silent s/^\(\s*\)/'.a:symbol.' \1'
endfunction

function! s:CommentInPlaceStrategy(symbol)
    return 'silent s/^\(\s*\)/\1'.a:symbol.' '
endfunction

let s:Uncomment = {symbol -> 'silent s/^\(\s*\)\('.symbol.'\s\)/\1\3'}
let s:Strategy = function("s:CommentBeginningStrategy")

function! ToggleComment()
    if !has_key(s:comment_map, &filetype)
        echo "no filetype found."
        return
    endif

    let current_line = getline('.')
    if current_line =~ '^\s*$'
        return
    endif

    let comment_symbol = s:comment_map[&filetype]
    if current_line =~ '^\s*'.comment_symbol
        execute s:Uncomment(comment_symbol)
    else
        execute s:Strategy(comment_symbol)
    endif
endfunction

