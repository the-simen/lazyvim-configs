return {
  "folke/noice.nvim",
  opts = {
    cmdline = {
      format = {
        IncRename = { pattern = "^:IncRename ", icon = "", lang = "vim" },
      },
      view = "cmdline_popup",
    },
    presets = {
      cmdline_input = false,
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
