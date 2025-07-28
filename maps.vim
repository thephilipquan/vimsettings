source ~/.vim/togglecomment.vim

" my mappings.
nnoremap <C-_> :call ToggleComment()<Enter>
vnoremap <C-_> :call ToggleComment()<Enter>

" Leader mappings.
nnoremap <Space> <Nop>

let mapleader = " "
nnoremap <leader>e :Explore<Enter>
nnoremap <leader>n :$tabnew<Enter>
nnoremap <leader>f :FZF<Enter>
nnoremap <leader>s :Rg<Space>
nnoremap <leader>v :e ~/.vim/<Enter>

" overrides
nnoremap [c [czz
nnoremap ]c ]czz
