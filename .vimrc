" General.
colorscheme mine
set autoindent
set autochdir
set colorcolumn=80
set cursorline
set expandtab
set hidden
set ignorecase
set incsearch
set list
set listchars=tab:>\ ,trail:·
set linebreak
set linespace=3
set noswapfile
set nowrap
set number relativenumber
set scrolloff=8
set shiftwidth=4
set shortmess-=S " displays search count.
set smartcase
set tabstop=4
set wildmode=list:longest

" look up *g:netrw_browse_split*

" Turns off blinking.
set t_vb=
set vb t_vb=

" Set cursor type.
" SI = Insert Mode
" EI = Everything else
" 6 = steady bar
" 2 = steady block
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Source custom files.
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
call plug#end()

" Autocommands.
augroup OnSave
    autocmd!
    autocmd BufWritePost * :%s/\s\+$//e
augroup END
