-- mutt settings
if os.getenv("NVIM_IN_MUTT") == 1 then
   vim.opt.spell = true
   vim.opt.spelllang = "en_gb"
   vim.opt.textwidth = 72
   vim.opt.wrap = true
   vim.opt.linebreak = true
end
