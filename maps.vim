let s:comment_map = {
            \ "c": '\/\/',
            \ "cpp": '\/\/',
            \ "java": '\/\/',
            \ "make": '#',
            \ "sh": '#',
            \ "py": '#',
            \ "vim": '"',
            \ }

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
        execute 'silent s/^\(\s*\)\('.comment_symbol.'\s\)/\1\3'
    else
        " Place at columnt 1.
        " execute 'silent s/^\(\s*\)/'.comment_symbol.'\1 '

        " Place at text.
        execute 'silent s/^\(\s*\)/\1'.comment_symbol.' '
    endif
endfunction

nnoremap <C-_> :call ToggleComment()<Enter>
vnoremap <C-_> :call ToggleComment()<Enter>


" Leader mappings.
nnoremap <Space> <Nop>

let mapleader = " "
nnoremap <leader>e :E<Enter>
nnoremap <leader>n :$tabnew<Enter>
nnoremap <leader>t <C-w>T
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

