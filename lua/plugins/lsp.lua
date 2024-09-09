return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint_d",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
}
