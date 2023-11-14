local builtin = require('telescope.builtin')
local set = vim.keymap.set


set('n', '<leader>pf', builtin.find_files, {})
set('n', '<C-p>', builtin.git_files, {})
set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
