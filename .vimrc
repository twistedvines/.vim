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

"split configuration
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"plugin installation & management
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-ruby/vim-ruby'
Plug 'wincent/command-t'

call plug#end()

"lightline configuration"
let g:lightline = {
	\ 'colorscheme': 'seoul256',
	\ }

"command-t configuration
set wildignore+=*.log,*.sql,*.cache
noremap <Leader>r :CommandTFlush<CR>
