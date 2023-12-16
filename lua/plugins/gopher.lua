return {
	"olexsmir/gopher.nvim",
	lazy = false,
	ft = "go",
	config = function(_, opts)
		require("gopher").setup(opts)
		-- code
	end,
	build = function()
		vim.cmd([[silent! GoInstallDeps]])
	end,
}
