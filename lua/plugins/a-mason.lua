-- Mason is so good. It's used to install all sorts of cool things.
-- Those cool things are referenced in the lsp directory and loaded in the lsp.lua config, debugging.lua and conform.lua
--
-- Currently, to keep up with the stuff installed:
-- Language Servers:
--    lua-language-server (lua)
--    zls (zig)
--    jedi-language-server (python)
--    clangd (C C++)
-- Formatters:
--    Stylua (lua)
--    Prettier (markdown, json, yaml, html, css)
--    Black (python)
-- Debuggers:
--    CodeLLDB (C, C++, Rust & Zig)
--    debugpy (python)
--
-- Outside of Mason:
--    rust-analyzer (rust LSP)

return {
   {
      "mason-org/mason.nvim",
      config = function()
         require("mason").setup({
            opts = {
               ensure_installed = {
                  "stylua",
                  "prettier",
                  "codelldb",
                  "debugpy",
                  "black",
                  "kdlfmt",
               },
            },
         })
      end,
   },
   {
      "mason-org/mason-lspconfig.nvim",
      config = function()
         require("mason-lspconfig").setup({
            opts = {
               ensure_installed = {
                  "clangd",
                  "lua_ls",
                  "zls",
                  "jedi_language_server",
                  "rust-analyzer",
               },
            },
         })
      end,
   },
}
