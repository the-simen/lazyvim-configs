return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      vtsls = {
        settings = {
          typescript = {
            inlayHints = {
              parameterNames = { enabled = "none" }, -- "none", "literals", "all"
              parameterTypes = { enabled = false },
              variableTypes = { enabled = false },
              propertyDeclarationTypes = { enabled = false },
              functionLikeReturnTypes = { enabled = false },
              enumMemberValues = { enabled = false },
            },
          },
          javascript = {
            inlayHints = {
              -- То же самое для JS/JSX
              parameterNames = { enabled = "none" },
              parameterTypes = { enabled = false },
              variableTypes = { enabled = false },
              propertyDeclarationTypes = { enabled = false },
              functionLikeReturnTypes = { enabled = false },
              enumMemberValues = { enabled = false },
            },
          },
        },
      },
      lua_ls = {
        settings = {
          Lua = {
            hint = { enable = false },
            telemetry = { enable = false },
            diagnostics = {
              enable = false,
              globals = { "vim" },
            },
          },
        },
      },
      cssls = {
        settings = {
          css = {
            validate = true,
          },
          scss = {
            validate = true,
          },
        },
      },
    },
  },
}
