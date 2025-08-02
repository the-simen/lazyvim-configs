return {
  "NvChad/nvim-colorizer.lua",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    filetypes = { "*" }, -- включить для всех файлов
    user_default_options = {
      RGB = true, -- #RGB
      RRGGBB = true, -- #RRGGBB
      names = true, -- color names like 'red'
      RRGGBBAA = true, -- #RRGGBBAA
      rgb_fn = true, -- rgb() and rgba()
      hsl_fn = true, -- hsl() and hsla()
      css = true, -- enable all CSS features
      css_fn = true, -- enable functions like `rgb()`, `hsl()`
      tailwind = true, -- tailwind classes
      mode = "foreground", -- also try "virtualtext" or "foreground"
    },
  },
}
