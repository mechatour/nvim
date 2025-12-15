return {
   cmd = { "clangd" },

   filetypes = { "c", "h", "cpp", "hpp" },

   root_markers = { ".clangd", "compile_commands.json", "Makefile", ".git" },

   capabilities = {
      offsetEncoding = { "utf-8", "utf-16"},
      textDocument = {
         completion = {
            editsNearCursor = true
         },
         semanticTokens = {
            multilineTokenSupport = true,
         },
      },
   },
}
