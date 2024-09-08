-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local cmp = require("cmp")

cmp.setup({
  mapping = {
    ["<Tab>"] = cmp.mapping.confirm({ select = true }),
    ["<CR>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.abort()
        fallback() -- Also insert a new line
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<ESC>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.abort()
      else
        fallback()
      end
    end),
  },
})

vim.cmd("colorscheme ayu")
-- vim.cmd("colorscheme gotham")
