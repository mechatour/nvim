return {
   cmd = { "clangd" },

   filetypes = { "c", "h", "cpp", "hpp" },

   root_markers = { ".clangd", "compile_commands.json" },

   capabilities = {
      textDocument = {
         semanticTokens = {
            multilineTokenSupport = true,
         },
      },
   },
}
