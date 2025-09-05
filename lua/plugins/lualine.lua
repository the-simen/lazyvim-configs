return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local colors = {
      blue = "#80a0ff",
      cyan = "#79dac8",
      black = "#1F1F2F",
      white = "#BBC3E4",
      red = "#ff5189",
      violet = "#C6A2F2",
      grey = "#303030",
      green = "#96BA7C",
    }

    local bubbles_theme = {
      normal = {
        a = { fg = colors.black, bg = colors.violet },
        b = { fg = colors.white, bg = colors.grey },
        c = { fg = colors.white },
      },
      insert = { a = { fg = colors.black, bg = colors.blue } },
      visual = { a = { fg = colors.black, bg = colors.cyan } },
      replace = { a = { fg = colors.black, bg = colors.red } },
      inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white },
      },
    }

    opts.options = {
      theme = bubbles_theme,
      component_separators = "",
      section_separators = "", -- <— ОТКЛЮЧАЕМ глобальные
      globalstatus = true,
    }

    opts.sections = {
      -- левый «бабл» режима
      lualine_a = {
        { "mode", separator = { left = " ", right = "" }, padding = { left = 2, right = 2 } },
      },

      lualine_b = {
        {
          "filename",
          separator = { right = "" }, -- сепаратор справа
          padding = { left = 2, right = 1 },
        },
      },

      -- центр: зелёный «бабл» ветки + прозрачные зазоры слева/справа
      lualine_c = {
        {
          function()
            return " "
          end,
          separator = "",
          padding = 0,
          color = { bg = "NONE" },
        }, -- зазор
        {
          "branch",
          color = { fg = colors.black, bg = colors.green },
          separator = { left = "", right = " " },
          padding = { left = 2, right = 2 },
          icon = "",
        },
        {
          function()
            return " "
          end,
          separator = "",
          padding = 0,
          color = { bg = "NONE" },
        }, -- зазор
      },

      lualine_x = {},
      lualine_y = {
        {
          "filetype",
          separator = { left = "" }, -- сепаратор слева
          padding = { left = 1, right = 0 },
        },
        "progress",
      },

      -- правый «бабл» позиции
      lualine_z = {
        { "location", separator = { left = " ", right = " " }, padding = { left = 2, right = 2 } },
      },
    }

    opts.inactive_sections = {
      lualine_a = { "filename" },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { "location" },
    }

    opts.tabline = {}
    opts.extensions = {}
  end,
}
