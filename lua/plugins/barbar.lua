local map = vim.keymap.set
local opts = { noremap = true, silent = true }

return {
	"romgrk/barbar.nvim",
	lazy = false,
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {
		-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
		-- animation = true,
		-- insert_at_start = true,
		-- …etc.
	},
	keys = {
		-- Move to previous/next
		map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts),
		map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts),
		-- Re-order to previous/next
		map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts),
		map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts),

		-- Pin/unpin buffer
		map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts),
		-- Close buffer
		map("n", "<A-x>", "<Cmd>BufferClose<CR>", opts),
		map("n", "<A-z>", "<Cmd>BufferCloseAllButCurrent<CR>", opts),
	},
	version = "^1.0.0", -- optional: only update when a new 1.x version is released
}

