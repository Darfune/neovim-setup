local opts = {
	ensure_installed = {
		"efm",
		"lua_ls",
		"clangd", 
		"gopls",
		"kotlin_language_server",
		"pyright",
	},
	automatic_installation = true,
}

return {
	"williamboman/mason-lspconfig.nvim",
	opts = opts,
	event = "BufReadPre",
	dependecies = "williamboman/mason.nvim",
}
