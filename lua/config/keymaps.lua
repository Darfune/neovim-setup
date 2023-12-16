local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-----------------------------------------------------------
-- Naviagete to buffer
-----------------------------------------------------------

map('n', '<c-h>', ':wincmd h<CR>', opts) -- Left
map('n', '<c-l>', ':wincmd l<CR>', opts) -- Right
map('n', '<C-j>', [[<Cmd>wincmd j<CR>]], opts) -- Down
map('n', '<C-k>', [[<Cmd>wincmd k<CR>]], opts) -- Up

-----------------------------------------------------------
-- Window spliting
-----------------------------------------------------------

map("n", "<leader>sv", ":vsplit<CR>", opts) -- Vertically
map("n", "<leader>sh", ":split<CR>", opts) -- Horizontally
map("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle Minimize

-----------------------------------------------------------
-- Special 
-----------------------------------------------------------

map('n', 'J', 'mzJ`z') -- Don't change cursor position 

map('n', '<C-d>', '<C-d>zz') -- Page down with the cursor at the center
map('n', '<C-u>', '<C-u>zz') -- Page up with the cursor at the center

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Move highlighted lines
map('v', "J", ":m '>+1<CR>gv=gv") -- Down
map('v', "K", ":m '<-2<CR>gv=gv") -- Up

-- paste over currently selected text without yanking it
map("v", "p", '"_dp')
map("v", "P", '"_dP')
map('x', '<leader>p', "\"_dP")
