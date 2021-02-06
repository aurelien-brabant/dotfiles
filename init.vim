syntax enable
set noswapfile
set number
set nocompatible
set shiftwidth=4
set tabstop=4
set cursorline
set list listchars=tab:»-,trail:·,extends:»,precedes:«

call plug#begin(stdpath('data') . '/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'ayu-theme/ayu-vim'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim'
Plug 'pbondoer/vim-42header'
Plug 'dracula/vim'

call plug#end()

set termguicolors

let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }

colorscheme dracula
