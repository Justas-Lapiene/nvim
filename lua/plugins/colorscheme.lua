return {
  "Shatur/neovim-ayu",
  config = function()
    local colors = require("ayu.colors")
    colors.generate() -- Pass `true` to enable mirage

    require("ayu").setup({
      overrides = {
        IncSearch = { fg = colors.fg },
      },
    })
  end,
}
