-- Tabs (default - this might be changed by the formatters)
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
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- Coding
vim.cmd("syntax on")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set cursorline")
vim.g.have_nerd_font = true
vim.opt.signcolumn = "yes" --avoid annoying column shift when highlighting errors

--- Copy yank buffer to wayland clipboard
vim.cmd('nnoremap <leader>y :call system("wl-copy", @")<CR>')

--- Others
vim.opt.winborder = "rounded"

-- Conform keybinding
vim.keymap.set({ "n", "v" }, "<C-f>", function()
   require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Format file" })

-- LSP
-- prevent the built-in vim.lsp.completion autotrigger from selecting the first item
vim.opt.completeopt = { "menuone", "noselect", "popup" }
vim.keymap.set("i", "<C-Space>", vim.lsp.completion.get, { desc = "trigger autocompletion" })
