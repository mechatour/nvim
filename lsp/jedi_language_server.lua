return {
   cmd = { "jedi-language-server" },

   filetypes = { "py" },

   --root_markers = { ".clangd", "compile_commands.json" },

   capabilities = {
      textDocument = {
         semanticTokens = {
            multilineTokenSupport = true,
         },
      },
   },
}
