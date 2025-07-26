return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      json = { "prettier" },
      yaml = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      markdown = { "prettier" },
    },
    formatters = {
      prettier = {
        command = vim.fn.has("win32") == 1 and "prettier.cmd" or "prettier",
        args = {
          "--stdin-filepath",
          "$FILENAME",
          "--config-precedence",
          "prefer-file",
        },
        cwd = require("conform.util").root_file({
          ".prettierrc",
          ".prettierrc.json",
          ".prettierrc.yml",
          ".prettierrc.js",
          "package.json",
        }),
      },
    },
  },
}
