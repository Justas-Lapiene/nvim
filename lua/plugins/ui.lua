return {
  { "f-person/git-blame.nvim" },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      hijack_cursor = false, -- put cursor at start of filename
      update_cwd = true,
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
      view = {
        auto_resize = true,
      },
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
    },
  },
  { "rafi/awesome-vim-colorschemes" },
  -- {
  --   "ribru17/bamboo.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- Lua
  --     require("bamboo").setup({
  --       -- Main options --
  --       -- NOTE: to use the light theme, set `vim.o.background = 'light'`
  --       style = "multiplex", -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
  --       toggle_style_key = nil, -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
  --       toggle_style_list = { "vulgaris", "multiplex", "light" }, -- List of styles to toggle between
  --       transparent = false, -- Show/hide background
  --       dim_inactive = false, -- Dim inactive windows/buffers
  --       term_colors = true, -- Change terminal color as per the selected theme style
  --       ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
  --       cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
  --
  --       -- Change code style ---
  --       -- Options are anything that can be passed to the `vim.api.nvim_set_hl` table
  --       -- You can also configure styles with a string, e.g. keywords = 'italic,bold'
  --       code_style = {
  --         comments = { italic = true },
  --         conditionals = { bold = true },
  --         keywords = {},
  --         functions = {},
  --         namespaces = {},
  --         parameters = { bold = true },
  --         strings = {},
  --         variables = {},
  --       },
  --
  --       -- Lualine options --
  --       lualine = {
  --         transparent = false, -- lualine center bar transparency
  --       },
  --
  --       -- Custom Highlights --
  --       colors = {}, -- Override default colors
  --       highlights = {}, -- Override highlight groups
  --
  --       -- Plugins Config --
  --       diagnostics = {
  --         darker = false, -- darker colors for diagnostic
  --         undercurl = true, -- use undercurl instead of underline for diagnostics
  --         background = true, -- use background color for virtual text
  --       },
  --     })
  --     require("bamboo").load()
  --   end,
  -- },
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      local focused = true
      vim.api.nvim_create_autocmd("FocusGained", {
        callback = function()
          focused = true
        end,
      })
      vim.api.nvim_create_autocmd("FocusLost", {
        callback = function()
          focused = false
        end,
      })
      table.insert(opts.routes, 1, {
        filter = {
          cond = function()
            return not focused
          end,
        },
        view = "notify_send",
        opts = { stop = false },
      })

      opts.commands = {
        all = {
          -- options for the message history that you get with `:Noice`
          view = "split",
          opts = { enter = true, format = "details" },
          filter = {},
        },
      }

      opts.presets.lsp_doc_border = true
    end,
  },
}
