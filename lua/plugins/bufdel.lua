-- ~/.config/nvim/lua/plugins/bufdel.lua
return {
  "ojroques/nvim-bufdel",
  config = function()
    require("bufdel").setup({
      quit = false, -- Не закрывать Neovim при удалении последнего буфера
    })
  end,
}

