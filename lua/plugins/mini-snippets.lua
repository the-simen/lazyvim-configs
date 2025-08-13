return {
  "echasnovski/mini.snippets",
  event = "InsertEnter", -- don't depend on other plugins to load...
  dependencies = "rafamadriz/friendly-snippets",
  opts = function()
    ---@diagnostic disable-next-line: duplicate-set-field
    LazyVim.cmp.actions.snippet_stop = function() end -- by design, <esc> should not stop the session!
    ---@diagnostic disable-next-line: duplicate-set-field
    LazyVim.cmp.actions.snippet_forward = function()
      return jump("next")
    end

    local mini_snippets = require("mini.snippets")
    local gen_loader = mini_snippets.gen_loader

    return {
      mappings = {
        expand = "<ss>",
        jump_next = "<A-;>",
        jump_prev = "<A-j>",
      },
      snippets = {
        gen_loader.from_file(vim.fn.stdpath("config") .. "/snippets/global.json"),
        gen_loader.from_lang(),
      },

      -- Following the behavior of vim.snippets,
      -- the intended usage of <esc> is to be able to temporarily exit into normal mode for quick edits.
      --
      -- If you'd rather stop the snippet on <esc>, activate the line below in your own config:
      -- mappings = { stop = "<esc>" }, -- <c-c> by default, see :h MiniSnippets-session

      expand = {
        select = function(snippets, insert)
          -- Close completion window on snippet select - vim.ui.select
          -- Needed to remove virtual text for fzf-lua and telescope, but not for mini.pick...
          local select = expand_select_override or MiniSnippets.default_select
          select(snippets, insert)
        end,
      },
    }
  end,
}
