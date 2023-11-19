require'toggleterm'.setup {
	size = 15,
	open_mapping = [[<c-\>]],
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 1,
	start_in_insert = true,
	persist_size = true,
	direction = 'horizontal',
	close_on_exit = true
}

  -- local opts = { noremap = true, silent = true }
  -- function _G.set_terminal_keymaps()
  --   vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
  --   vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
  --   vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
  --   vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
  -- end

  function _G.set_terminal_keymaps()
	  local opts = {buffer = 0}
	  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
	  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
	  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
	  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
	  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
	  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
	  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
  end

  -- if you only want these mappings for toggle term use term://*toggleterm#* instead
  vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
