source ~/.vim/togglecomment.vim

nnoremap <C-_> :call ToggleComment()<Enter>
vnoremap <C-_> :call ToggleComment()<Enter>

" Leader mappings.
nnoremap <Space> <Nop>

let mapleader = " "
nnoremap <leader>e :Lexplore<Enter>
nnoremap <leader>n :$tabnew<Enter>
nnoremap <leader>t <C-w>T
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
