
return {
    "nvim-neo-tree/neo-tree.nvim",
	lazy = false,
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
	keys = {
		vim.keymap.set('n','<M-1>','<Cmd>Neotree toggle<CR>', { noremap = true, silent = true })
	},
	config = function()
		require("neo-tree").setup{}
	end,
}
