return {
   "voldikss/vim-floaterm",
   config = function()
      vim.keymap.set("n", "<leader>ft", ":FloatermNew --name=myfloat --height=0.8 --width=0.8 --autoclose=2 zsh <CR> ")
   end,
}
