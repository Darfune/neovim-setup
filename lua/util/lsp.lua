local M = {}
-----------------------------------------------------------
-- Lspsage keybinds
-----------------------------------------------------------
-- enable keybinds only for when lsp server is available
M.on_attach = function(client, bufnr)
	local map = vim.keymap.set

		-- keybind options
		local opts = { noremap = true, silent = true, buffer = bufnr }

		map("n", "<leader>fd", ":Lspsaga finder<CR>", opts) -- go to definition
		map("n", "<leader>gd", ":Lspsaga peek_definition<CR>", opts) -- peak definition
		map("n", "<leader>gD", ":Lspsaga goto_definition<CR>", opts) -- go to definition
		map("n", "<leader>ca", ":Lspsaga code_action<CR>", opts) -- see available code actions
		map("n", "<leader>rn", ":Lspsaga rename<CR>", opts) -- smart rename
		map("n", "<leader>D", ":Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
		map("n", "<leader>d", ":Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
		map("n", "<leader>pd", ":Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to prev diagnostic in buffer
		map("n", "<leader>nd", ":Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
		map("n", "K", ":Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor

	if client.name == "pyright" then
		map("n", "<Leader>oi", ":PyrightOrganizeImports<CR>", opts)
	end
end

return M
