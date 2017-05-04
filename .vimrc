filetype on
syntax on
colorscheme desert
set guifont=Monaco\ Regular:h18

set columns=80
set colorcolumn=80
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
