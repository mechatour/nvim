-- Mason is so good. It's used to install all sorts of cool things.
-- Those cool things are referenced in lsp.lua, debugging.lua and none-ls.lua
--
-- Currently, to keep up with the stuff installed:
-- Language Servers:
--    lua-language-server (lua)
--    zls (zig)
--    jedi-language-server (python)
-- Formatters:
--    Stylua (lua)
--    Prettier (markdown, json, yaml)
-- Debuggers:
--    CodeLLDB (C, C++, Rust & Zig)
--    debugpy (python)
--
-- Outside of Mason:
--    rust-analyzer (rust LSP)
return {
   {
      'williamboman/mason.nvim',
      config = function()
         require("mason").setup()
      end
   },
}
