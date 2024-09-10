-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>w", "<cmd>write<cr>")
keymap.set("n", "<leader>q", "<cmd>quit<cr>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

--nvim surround
vim.keymap.set("x", "(", "S)", { remap = true })
vim.keymap.set("x", ")", "S)", { remap = true })
vim.keymap.set("x", "[", "S]", { remap = true })
vim.keymap.set("x", "]", "S]", { remap = true })
vim.keymap.set("x", "{", "S}", { remap = true })
vim.keymap.set("x", "}", "S}", { remap = true })

-- Key enhancements
keymap.set("n", "<C-u>", "<C-u>zz", opts)
keymap.set("n", "<C-d>", "<C-d>zz", opts)
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set("n", "<leader>rr", "<cmd>LspRestart<cr>")
local live_grep_args_shortcuts = require("telescope-live-grep-args.shortcuts")
keymap.set("n", "<leader>/c", live_grep_args_shortcuts.grep_word_under_cursor)
