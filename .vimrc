filetype on
syntax on
colorscheme desert
set guifont=Monaco\ Regular:h18

set number

let mapleader=" "

"reload .vimrc after changes"
map <Leader>s :source ~/.vimrc<CR>

set hidden
set history=100

"clear whitespace"
autocmd BufWritePre * :%s/\s\+$//e

set hlsearch

"switch to other file"
nnoremap <Leader><Leader> :e#<CR>

set showmatch

"plugin installation & management
call plug#begin('~/.vim/plugged')

"Plug 'vim-ruby/vim-ruby'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'

call plug#end()

"lightline configuration"
let g:lightline = {
	\ 'colorscheme': 'seoul256',
	\ }
