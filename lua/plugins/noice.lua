return {
  "folke/noice.nvim",
  opts = {
    norify = {
      enabled = false,
    },
    lsp = {
      enabled = true,
      hover = {
        enabled = false,
      },
      signature = {
        enabled = true,
        opts = {
          border = "rounded",
          position = {
            row = 2,
          },
        },
      },
    },
  },
}
