return {
   cmd = { "zls" },

   filetypes = { "zig" },

   --root_markers = { ".clangd", "compile_commands.json" },

   capabilities = {
      textDocument = {
         semanticTokens = {
            multilineTokenSupport = true,
         },
      },
   },
}
