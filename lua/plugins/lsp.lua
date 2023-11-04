local util = require "lspconfig/util"


local on_attach = function(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end
	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end

	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

	local opts = { noremap = true, silent = true }

end

---@diagnostic disable-next-line: undefined-global
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

require('lspconfig')['lua_ls'].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require('lspconfig')['gopls'].setup({
	on_attach = on_attach,
	capabilities = capabilities,
	cmd = {"gopls"},
	filetypes = {"go","gomod","gowork","gotmpl"},
	root_dir = util.root_pattern("go.work","go.mod","git"),
	settings = {
		gopls = {
			completeUnimported = true,
			usePlaceholders = true,
			analyses = {
				unusedparams = true,
			},
		},
	},
})
