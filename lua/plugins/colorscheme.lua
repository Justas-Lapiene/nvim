return {
  "Shatur/neovim-ayu",
  config = function()
    local colors = require("ayu.colors")
    colors.generate(false) -- Pass `true` to enable mirage

    require("ayu").setup({
      overrides = {
        MatchParen = { fg = colors.string, bg = colors.bg, bold = true },
      },
    })
  end,
}
