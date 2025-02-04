-- Mason is so good. It's used to install all sorts of cool things.
-- Those cool things are referenced in lsp.lua, debugging.lua and none-ls.lua
return {
   {
      'williamboman/mason.nvim',
      config = function()
         require("mason").setup()
      end
   },
}
