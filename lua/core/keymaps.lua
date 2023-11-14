
local opts = { noremap = true, silent = true }

local api_map = vim.api.nvim_set_keymap
local map = vim.keymap.set

vim.g.mapleader = " "

-- Clear search
map('n', '<leader>h',':nohlsearch<CR>')

-- Expore main directory
map("n","<leader>pv",vim.cmd.Ex)

--api_map("n", '<M-1>', ':NvimTreeToggle<CR>', opts)

map('n', '<c-h>', ':wincmd h<CR>')
map('n', '<c-l>', ':wincmd l<CR>')


map('v', "J", ":m '>+1<CR>gv=gv") -- Move highlighted lines down
map('v', "K", ":m '<-2<CR>gv=gv") -- Move highlighted lines up

map('n', 'J', 'mzJ`z') -- Don't change cursor position 

map('n', '<C-d>', '<C-d>zz') -- Page down with the cursor at the center
map('n', '<C-u>', '<C-u>zz') -- Page up with the cursor at the center


map('x', '<leader>p', "\"_dP")

