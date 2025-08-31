-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Добавляем новые keymaps поверх стандартных LazyVim
vim.g.mapleader = " "

-- Перемещение с hjkl на jkl;
local function remap_keys()
  vim.keymap.set("n", "s", "<Nop>")
  vim.keymap.set("x", "s", "<Nop>")
  -- Normal/Visual режимы
  -- vim.keymap.set({ "n", "x" }, "j", "h", { desc = "Left" })
  -- vim.keymap.set({ "n", "x" }, "k", "j", { desc = "Down" })
  -- vim.keymap.set({ "n", "x" }, "l", "k", { desc = "Up" })
  -- vim.keymap.set({ "n", "x" }, ";", "l", { desc = "Right" })

  -- Перемещение между буферами
  -- vim.keymap.set("n", "<A-j>", "<cmd>bprevious<cr>", { desc = "Previous Buffer" })
  -- vim.keymap.set("n", "<A-;>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
  -- vim.keymap.set("n", "H", "<nop>")
  -- vim.keymap.set("n", "L", "<nop>")
  vim.keymap.set("i", "K", "K", { noremap = true })
  vim.keymap.set("i", "<C-s>", "<nop>")

  -- Переключение между окнами (адаптация под jkl;)
  -- vim.keymap.set("n", "<leader>j", "<C-w>h", { desc = "Focus left window" }) -- ←
  -- vim.keymap.set("n", "<leader>k", "<C-w>j", { desc = "Focus down window" }) -- ↓
  -- vim.keymap.set("n", "<leader>l", "<C-w>k", { desc = "Focus up window" }) -- ↑
  -- vim.keymap.set("n", "<leader>;", "<C-w>l", { desc = "Focus right window" }) -- →

  -- Закрытие буфера
  vim.keymap.set("n", "qq", "<cmd>BufDel<cr>", { desc = "Close Buffer" })

  -- Переключение Neo-tree
  vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle NeoTree" })

  -- Сплиты
  vim.keymap.set("n", "<leader>wv", "<cmd>vsplit<cr>", { desc = "Vertical Split" })
  vim.keymap.set("n", "<leader>wh", "<cmd>split<cr>", { desc = "Horizontal Split" })

  -- Отключить копирование при удалении
  vim.keymap.set({ "n", "x" }, "d", '"_d', { desc = "Delete without yank" })
  vim.keymap.set({ "n", "x" }, "D", '"_D', { desc = "Delete line without yank" })

  -- Декларация через LSP
  -- vim.keymap.set("n", "N", vim.lsp.buf.definition, { desc = "Go to Definition" })

  -- Подсказки и исправления
  -- vim.keymap.set("n", "h", vim.lsp.buf.hover, { desc = "Hover hint" })
  vim.keymap.set("n", "<leader>n", vim.lsp.buf.code_action, { desc = "Code Actions" })

  -- Переназначение b -> n
  -- vim.keymap.set({ "n", "x" }, "n", "b", { desc = "Backward word" })

  -- Перемещение строк вниз (Alt+k)
  vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down", silent = true })
  vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down", silent = true })

  -- Перемещение строк вверх (Alt+l)
  vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up", silent = true })
  vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up", silent = true })

  -- b → next search result (вместо n)
  -- vim.keymap.set("n", "b", "n", { noremap = true, silent = true, desc = "Next search result" })
  -- B → prev search result (вместо N)
  -- vim.keymap.set("n", "B", "N", { noremap = true, silent = true, desc = "Previous search result" })

  -- vim.keymap.set("i", "<C-;>", "<Del>", { silent = true, desc = "Delete char after cursor" })
  vim.keymap.set("n", "<leader>rn", function()
    return ":IncRename " .. vim.fn.expand("<cword>")
  end, { expr = true })
  -- vim.keymap.set("c", "<C-j>", "<BS>", { noremap = true })

  -- lazygit
  vim.keymap.set("n", "<leader>gg", function()
    Snacks.lazygit()
  end, { desc = "Lazygit (cwd)" })
end

remap_keys()

return {}
