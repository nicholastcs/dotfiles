-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    local opt = vim.opt_local
    opt.shiftwidth = 8
    opt.tabstop = 8
    opt.expandtab = false
  end,
})
