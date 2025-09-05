-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.shell = "fish"
vim.o.shellcmdflag = "--login"
vim.o.shellquote = ""
vim.o.shellxquote = ""
vim.opt.shellslash = true
vim.g.lazyvim_prettier_needs_config = true
vim.g.lazyvim_format_on_save = false
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
---@diagnostic disable-next-line: duplicate-set-field
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = "rounded" -- Or any other border
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end
