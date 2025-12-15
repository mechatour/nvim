return {
   cmd = { "rust-analyzer" },

   filetypes = { "rs" },

   root_markers = { "Cargo.toml", ".git" },

   capabilities = {
      textDocument = {
         semanticTokens = {
            multilineTokenSupport = true,
         },
      },
   },
}
