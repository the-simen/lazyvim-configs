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
            -- Сохраняем ваши оригинальные маппинги для insert mode
            ["k"] = actions.move_selection_next,
            ["l"] = actions.move_selection_previous,
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

    -- Автоматический выход из insert mode после открытия
    vim.api.nvim_create_autocmd("User", {
      pattern = "TelescopePreviewerLoaded",
      callback = function()
        if vim.fn.mode() == "i" then
          vim.cmd("stopinsert")
        end
      end,
    })

    -- Глобальные keymaps
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
  end,
}
