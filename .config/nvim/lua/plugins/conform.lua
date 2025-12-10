return {
   "stevearc/conform.nvim",
   config = function()
      require("conform").setup({
         formatters_by_ft = {
            lua = { "stylua" },
            -- Conform will run multiple formatters sequentially
            python = { "black" },

            rust = { "rustfmt", lsp_format = "fallback" },

            javascript = { "prettier" },
            css = { "prettier" },
            html = { "prettier" },
            markdown = { "prettier" },
            json = { "prettier" },
            yaml = { "prettier" },

            cpp = { "clang-format" },
            c = { "clang-format" },
         },
         formatters = {
            stylua = {
               inherit = false,
               command = "stylua",
               args = {
                  "--search-parent-directories",
                  "--indent-type",
                  "Spaces",
                  "--indent-width",
                  "3",
                  "--stdin-filepath",
                  "$FILENAME",
                  "-",
               },
            },
            clangformat = {
               inherit = false,
               command = "clangd",
               args = {
                  "--style=",
                  "Google",
                  "$FILENAME",
                  "-",
               },
            },
         },
         format_on_save = nil,
      })
   end,
   opts = {},
}
