--- This is the Language Server setup.
--- Also the completion engine setup.
--- These need to be installed by :Mason
--- However, some can't be (like rust_analyzer for instance)
---
---
---

vim.lsp.enable("lua_ls", "clangd", "jedi_language_server", "zls", "rust_analyzer")

vim.api.nvim_create_autocmd("LspAttach", {
   callback = function(ev)
      local client = vim.lsp.get_client_by_id(ev.data.client_id)
      if client:supports_method("textDocument/completion") then
         vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
      end
   end,
})
