require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = {"lua_ls", "clangd", "gopls","kotlin_language_server","pyright"}
})

require('lspconfig').lua_ls.setup{}
require('lspconfig').clangd.setup{}
require('lspconfig').gopls.setup{}
require('lspconfig').kotlin_language_server.setup{}
require('lspconfig').pyright.setup{}
