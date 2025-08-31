return {
  "saghen/blink.cmp",
  optional = true,
  depenencies = { "saghen/blink.compat" },
  opts = function(_, opts)
    local MiniSnippets = require("mini.snippets")
    -- ⬇️ Твои текущие настройки как основа
    opts.completion = vim.tbl_deep_extend("force", opts.completion or {}, {
      menu = { border = "rounded" },
      documentation = { window = { border = "rounded" } },
    })

    opts.signature = vim.tbl_deep_extend("force", opts.signature or {}, {
      window = { border = "rounded" },
    })

    opts.sources = vim.tbl_deep_extend("force", opts.sources or {}, {
      compat = { "supermaven" },
      providers = {
        supermaven = {
          kind = "Supermaven",
          score_offset = 100,
          async = true,
        },
      },
    })

    opts.keymap = vim.tbl_deep_extend("force", opts.keymap or {}, {
      preset = "default",
      ["<Tab>"] = { "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },
      ["<Up>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
    })

    if include_in_completion then
      opts.snippets = { preset = "mini_snippets" }
      return opts
    end

    -- Standalone --
    local expand_select_override
    expand_select_override = function(snippets, insert)
      -- Schedule, otherwise blink's virtual text is not removed on vim.ui.select
      blink.cancel()
      vim.schedule(function()
        MiniSnippets.default_select(snippets, insert)
      end)
    end

    return opts
  end,
}
