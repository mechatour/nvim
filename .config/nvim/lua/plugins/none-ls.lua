-- none-ls allows formatters and linters to hook into the lsp system (nvim-lspconfig).
-- Basically, some lsp's support formatting while others don't.
--
-- The formatters, diagnostics (linters) and completions need to be installed by :Mason
return {
   {
      "nvimtools/none-ls.nvim",
      config = function()
         local null_ls = require("null-ls")
         null_ls.setup({
            sources = {
               null_ls.builtins.formatting.stylua, --Lua
               null_ls.builtins.formatting.prettier, --Javascript Typescript Markdown css json html yaml
            }
         })
      end,
      requires = { "nvim-lua/plenary.nvim" },
   },
}
