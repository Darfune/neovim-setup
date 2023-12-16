local map = vim.keymap.set

local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
			mappings = {
				i = {},
			},
		},
		pickers = {
			find_files = {
				previewer = true,
				hidden = true,
			},
			live_grep = {
				previewer = true,
			},
			buffers = {
				previewer = true,
			},
		},
	})
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	config = config,
	keys = {
		map("n", "<leader>fk", ":Telescope keymaps<CR>"),
		map("n", "<leader>fh", ":Telescope help_tags<CR>"),
		map("n", "<leader>ff", ":Telescope find_files<CR>"),
		map("n", "<leader>fa", ":Telescope<CR>"),
		map("n", "<leader>fg", ":Telescope live_grep<CR>"),
		map("n", "<leader>fb", ":Telescope buffers<CR>"),
	},
}
