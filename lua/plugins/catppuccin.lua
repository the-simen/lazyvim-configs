return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  opts = function(_, opts)
    -- твои базовые настройки
    opts.flavour = "frappe"
    opts.transparent_background = true
    opts.float = {
      transparent = true,
      solid = true,
    }
    opts.integrations = {
      telescope = true,
      cmp = true,
      lsp_trouble = true,
      mason = true,
    }

    -- фикс бага с bufferline
    local module = require("catppuccin.groups.integrations.bufferline")
    if module then
      module.get = module.get_theme
    end

    return opts
  end,
  priority = 1000,
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin")
  end,
}
