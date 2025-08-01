return {
  "folke/noice.nvim",
  opts = {
    presets = {
      lsp_doc_border = true,
    },
    norify = {
      enabled = false,
    },
    lsp = {
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
