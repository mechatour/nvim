-- Tabs
vim.cmd("set expandtab")
vim.cmd("set tabstop=3")
vim.cmd("set softtabstop=3")
vim.cmd("set shiftwidth=3")

-- Colours
vim.cmd.colorscheme("storm-true")

-- Searching
vim.cmd("set incsearch")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set hlsearch")
vim.cmd("set showmatch")
vim.g.mapleader = '\\'
vim.g.maplocalleader = '\\'

-- Coding
vim.cmd("syntax on")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set cursorline")
vim.g.have_nerd_font = true

--- Keymaps
vim.cmd('nnoremap <leader>y :call system("wl-copy", @")<CR>')
