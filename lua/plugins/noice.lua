return {
  "folke/noice.nvim",
  opts = {
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
    lsp = {
      enabled = true,
      hover = {
        opts = {
          border = "rounded",
          position = {
            row = 2,
          },
        },
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
