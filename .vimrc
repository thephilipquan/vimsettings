" General.
runtime colors/mine.vim
set autoindent
set autochdir
set breakindent
set colorcolumn=80
set cursorline
set foldmethod=syntax
set foldenable
set hidden
set ignorecase
set incsearch
set list
set listchars=tab:>\ ,trail:·
set linebreak
set linespace=3
set noexpandtab
set noswapfile
set nowrap
set number relativenumber
set scrolloff=8
set shiftwidth=4
set shortmess-=S " displays search count.
set smartcase
set tabstop=4
set wildmode=list:longest

let supressBanner = 0
let g:netrw_banner = supressBanner

let verticalSplitPreview = 1
let g:netrw_preview  = verticalSplitPreview

let treeStyle = 0
let g:netrw_liststyle = treeStyle

let humanReadableSize = "H"
let g:netrw_sizestyle = humanReadableSize

let windowWidthPercentage = 20
let g:netrw_winsize = windowWidthPercentage

" Turns off blinking.
set t_vb=

" Set cursor type.
" SI = Insert Mode
" EI = Everything else
" 6 = steady bar
" 2 = steady block
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Source custom files.
source ~/.vim/autofoldcolumn.vim
source ~/.vim/maps.vim
source ~/.vim/statusline.vim
source ~/.vim/localvimrc.vim

" Automatically install Vim Plug if doesn't exist.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins.
call plug#begin()
Plug 'vim-scripts/AutoComplPop'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" Autocommands.
augroup RemoveExtraSpace
    autocmd!
    autocmd BufWritePost * :%s/\s\+$//e
augroup END

if &diff
  autocmd VimEnter * normal! gg]c
endif
