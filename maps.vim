source ~/.vim/togglecomment.vim

nnoremap <C-_> :call ToggleComment()<Enter>
vnoremap <C-_> :call ToggleComment()<Enter>

" Leader mappings.
nnoremap <Space> <Nop>

let mapleader = " "
nnoremap <leader>e :Explore<Enter>
nnoremap <leader>n :$tabnew<Enter>
nnoremap <leader>t <C-w>T

" overrides
nnoremap [c [czz
nnoremap ]c ]czz
