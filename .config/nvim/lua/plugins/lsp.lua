--- This is the Language Server setup.
--- Also the completion engine setup.
--- These need to be installed by :Mason
--- However, some can't be (like rust_analyzer for instance)
---
return {
   {
      'neovim/nvim-lspconfig',
      config = function()
         -- Reserve a space in the gutter
         -- This will avoid an annoying layout shift in the screen
         vim.opt.signcolumn = 'yes'

         -- Add cmp_nvim_lsp capabilities settings to lspconfig
         -- This should be executed before you configure any language server
         local lspconfig_defaults = require('lspconfig').util.default_config
         lspconfig_defaults.capabilities = vim.tbl_deep_extend(
            'force',
            lspconfig_defaults.capabilities,
            require('cmp_nvim_lsp').default_capabilities()
         )

         -- This is where you enable features that only work
         -- if there is a language server active in the file
         vim.api.nvim_create_autocmd('LspAttach', {
            desc = 'LSP actions',
            callback = function(event)
               local opts = { buffer = event.buf }

               vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
               vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
               vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
               vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
               vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
               vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
               vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
               vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
               vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
               vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
            end,
         })
         require('lspconfig').lua_ls.setup({})               --Lua
         require('lspconfig').zls.setup({})                  --Zig
         require('lspconfig').rust_analyzer.setup({})        --Rust
         require('lspconfig').jedi_language_server.setup({}) --Python
      end
   },
   {
      'hrsh7th/cmp-nvim-lsp',
      config = function()
         local cmp = require('cmp')

         cmp.setup({
            sources = {
               { name = 'nvim_lsp' },
            },
            snippet = {
               expand = function(args)
                  -- You need Neovim v0.10 to use vim.snippet
                  vim.snippet.expand(args.body)
               end,
            },
            mapping = cmp.mapping.preset.insert({
               ['<right>'] = cmp.mapping.confirm({ select = true }),
            }),
         })
      end
   },
   {
      'hrsh7th/nvim-cmp',
   },
}
