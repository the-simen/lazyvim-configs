return {
  "hrsh7th/nvim-cmp",
  opts = {
    performance = {
      debounce = 100, -- по умолчанию 60ms
      throttle = 60, -- по умолчанию 30ms
    },
    window = {
      documentation = {
        border = "rounded",
        winhighlight = "Normal:MyHighlight",
        winblend = 0,
      },
    },
  },
}
