-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Отложенная установка твоих мапов, после загрузки всех плагинов
vim.api.nvim_create_autocmd("User", {
  pattern = "LazyVimStarted",
  callback = function()
    -- например, Ctrl+j в insert-mode удаление символа слева
    -- vim.keymap.set("i", "<C-j>", "<BS>", { silent = true, desc = "Backspace" })
    -- другая твоя кастомная мапа, например jj -> <Esc>
    vim.keymap.set("i", "jj", "<Esc>", { silent = true, desc = "Exit Insert" })
  end,
})

return {}
