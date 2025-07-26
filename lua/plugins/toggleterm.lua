return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    local Terminal = require("toggleterm.terminal").Terminal

    local pwsh_term = Terminal:new({
      cmd = "pwsh.exe", -- или полный путь, если короткое имя не срабатывает
      direction = "float",
      hidden = true,
    })

    vim.keymap.set({ "n", "t" }, "<C-/>", function()
      pwsh_term:toggle()
    end, { desc = "Toggle pwsh" })
  end,
}
