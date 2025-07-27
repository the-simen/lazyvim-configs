return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    keys = {
      { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "NeoTree" },
    },
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function()
      -- Сортировка директорий по FSD-порядку
      local fsd_order = {
        ["app"] = 1,
        ["processes"] = 2,
        ["pages"] = 3,
        ["widgets"] = 4,
        ["features"] = 5,
        ["entities"] = 6,
        ["shared"] = 7,
      }

      local function fsd_sort(a, b)
        local a_name = a.name:lower()
        local b_name = b.name:lower()

        local a_index = fsd_order[a_name] or 100
        local b_index = fsd_order[b_name] or 100

        if a.type == b.type and a.type == "directory" then
          return a_index < b_index or (a_index == b_index and a_name < b_name)
        end

        if a.type == "directory" and b.type ~= "directory" then
          return true
        elseif a.type ~= "directory" and b.type == "directory" then
          return false
        end

        return a_name < b_name
      end

      return {
        filesystem = {
          filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_hidden = false,
          },
          sort = {
            sorter = fsd_sort,
          },
          follow_current_file = { enabled = true },
          use_libuv_file_watcher = true,
        },
        close_if_last_window = true,
        window = {
          mappings = {
            ["j"] = "close_node",
            [";"] = "open",
            ["k"] = "",
            ["l"] = "",
          },
        },
      }
    end,
  },
}
