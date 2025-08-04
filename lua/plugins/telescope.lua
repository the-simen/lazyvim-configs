return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")

    -- Глобальные настройки для всех пикеров
    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<esc>"] = actions.close,
            ["<C-j>"] = function(prompt_bufnr)
              local cursor_pos = vim.api.nvim_win_get_cursor(0)
              local col = cursor_pos[2]
              if col > 0 then
                local current_line = vim.api.nvim_get_current_line()
                local new_line = current_line:sub(1, col - 1) .. current_line:sub(col + 1)
                vim.api.nvim_set_current_line(new_line)
                vim.api.nvim_win_set_cursor(0, { cursor_pos[1], col - 1 })
              end
            end,
            -- Сохраняем ваши оригинальные маппинги для insert mode
          },
          n = {
            -- Ваши кастомные маппинги для normal mode
            ["k"] = actions.move_selection_next,
            ["l"] = actions.move_selection_previous,
            ["q"] = actions.close,
            [";"] = actions.file_edit,
            ["<CR>"] = actions.select_default,
          },
        },
        -- Автоматический normal mode для всех пикеров
        initial_mode = "normal",
      },
      pickers = {
        -- Пример кастомизации конкретного пикера
        find_files = {
          hidden = true,
        },
      },
    })

    -- Глобальные keymaps
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
  end,
}
