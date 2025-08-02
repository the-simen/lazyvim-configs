-- bootstrap lazy.nvim, LazyVim and your plugins

require("lazy-config")

vim.diagnostic.config({
  float = {
    border = "rounded",
  },
})
vim.g.gitsings_async = true
vim.g.lazyvim_format_on_save = false
vim.g.spell = true
vim.env.PATH = vim.env.PATH .. ";C:/Users/tonki/AppData/Roaming/npm"
-- Добавьте в init.lua
vim.o.shadafile = vim.fn.stdpath("state") .. "/shada/main.shada"
vim.cmd([[
  function! ClearShadaTmp() abort
    let tmp_files = glob(stdpath('state')..'/shada/main.shada.tmp.*')
    for f in split(tmp_files, "\n")
      call delete(f)
    endfor
  endfunction
  autocmd VimEnter * call ClearShadaTmp()
]])

local systemlist = vim.fn.systemlist
vim.fn.systemlist = function(cmd, ...)
  local ok, result = pcall(systemlist, cmd, ...)
  if not ok or type(result) ~= "table" then
    vim.notify("systemlist failed: " .. vim.inspect(result), vim.log.levels.ERROR)
    return {}
  end
  return result
end

-- Вставь это в твой `init.lua` или `lua/config/notifications.lua`
vim.notify = function(msg, level, opts)
  if type(msg) == "string" and msg:match("curl: %(52%) Empty reply from server") then
    return -- просто игнорим
  end
  -- по умолчанию - стандартное поведение
  vim.schedule(function()
    vim.notify_original(msg, level, opts)
  end)
end

-- сохраняем оригинал
vim.notify_original = vim.notify
