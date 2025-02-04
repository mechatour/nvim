" Disable compatibility with vi which can cause unexpected issues.
set nocompatible
filetype off

" Vundle setup
call plug#begin()

" *** vim-plug Plugins Here
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'ervandew/supertab'
Plug 'rust-lang/rust.vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'ziglang/zig.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" ***********************
" Update vundle plugins with :PluginUpdate
"
call plug#end()
filetype plugin indent on

" *** Plugin configs start
" NerdTree
let NERDTreeShowHidden=1
" CoC
"inoremap <silent><expr> <tab> coc#pum#visible() ? coc#pum#confirm() : "\<TAB>"
"inoremap <silent><expr> <esc> coc#pum#visible() ? coc#pum#cancel() : "\<ESC>"

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" map to copy yanked buffers to clipboard - leader is \ so '\y' saves yanked
" buffer to system clipboard
nnoremap <leader>y :call system("wl-copy", @")<CR>

" set tabstops
set tabstop=4
set shiftwidth=4
set expandtab

" Coding
syntax on
set number
set relativenumber
set cursorline

" Colours
set termguicolors
colorscheme storm-true

" Searching
set incsearch
set ignorecase
set smartcase
set hlsearch
set showmatch

" Backups
set nobackup

" Others
set history=1000
set showmode
