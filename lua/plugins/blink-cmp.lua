return {
  "saghen/blink.cmp",
  optional = true,
  depenencies = { "saghen/blink.compat" },
  opts = {
    sources = {
      compat = { "supermaven", "copilot" },
      providers = {
        copilot = {
          kind = "Copilot",
          score_offset = 100,
          async = true,
        },
        supermaven = {
          kind = "Supermaven",
          score_offset = 100,
          async = true,
        },
      },
    },
    keymap = {
      preset = "default",
      ["<Tab>"] = { "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },

      ["<Up>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },
      ["<C-l>"] = { "select_prev", "fallback" },
      ["<C-k>"] = { "select_next", "fallback" },

      ["<S-k>"] = { "scroll_documentation_up", "fallback" },
      ["<S-j>"] = { "scroll_documentation_down", "fallback" },

      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide", "fallback" },
    },
  },
}
