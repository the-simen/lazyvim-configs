-- ~/.config/nvim/lua/plugins/bufdel.lua
return {
  "ojroques/nvim-bufdel",
  config = function()
    require("bufdel").setup({
      quit = false, -- не закрывать Neovim
    })

    vim.api.nvim_create_autocmd("BufReadPost", {
      callback = function()
        local bufs = vim.api.nvim_list_bufs()
        for _, buf in ipairs(bufs) do
          if
            vim.api.nvim_buf_is_loaded(buf)
            and vim.api.nvim_buf_get_option(buf, "buftype") == ""
            and vim.api.nvim_buf_get_name(buf) == ""
            and buf ~= vim.api.nvim_get_current_buf()
          then
            vim.api.nvim_buf_delete(buf, { force = true })
          end
        end
      end,
    })
  end,
}
