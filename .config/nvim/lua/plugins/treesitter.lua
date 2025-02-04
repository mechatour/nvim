-- Treesitter makes pretty code colours and it is super cool.
return {
   "nvim-treesitter/nvim-treesitter",
   build = ":TSUpdate",
   config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
         auto_install = true,
         highlight = { enable = true },
         indent = { enable = true },
      })
   end,
}
