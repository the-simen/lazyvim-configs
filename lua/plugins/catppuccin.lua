return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  opts = {
    flavour = "frappe",
    transparent_background = true,
    float = {
      transparent = true,
      solid = true,
    },
    integrations = {
      telescope = true,
      cmp = true,
      lsp_trouble = true,
      mason = true,
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin")
  end,
}
