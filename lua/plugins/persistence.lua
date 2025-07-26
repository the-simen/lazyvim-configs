-- lua/plugins/persistence.lua
return {
  "folke/persistence.nvim",
  event = "BufReadPre", -- запускается рано
  opts = {
    options = { "buffers", "curdir", "tabpages", "winsize" }, -- что сохранять
  },
  keys = {
    {
      "<leader>qs",
      function()
        require("persistence").load()
      end,
      desc = "Восстановить сессию",
    },
    {
      "<leader>ql",
      function()
        require("persistence").load({ last = true })
      end,
      desc = "Загрузить последнюю сессию",
    },
    {
      "<leader>qd",
      function()
        require("persistence").stop()
      end,
      desc = "Не сохранять сессию при выходе",
    },
  },
}
