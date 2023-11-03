local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)


require('lspconfig')['lua_ls'].setup({
on_attach = on_attach,
capabilities = capabilities,
})
