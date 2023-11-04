
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "


-- Expore main directory
vim.keymap.set("n","<leader>pv",vim.cmd.Ex)

local map = vim.api.nvim_set_keymap

map("n", '<M-1>', ':NvimTreeToggle<CR>', opts)
