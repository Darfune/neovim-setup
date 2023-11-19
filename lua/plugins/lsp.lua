local util = require "lspconfig/util"
local set = vim.keymap.set

require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = {"lua_ls", "clangd", "gopls","kotlin_language_server","pyright"}
})
local on_attach = function(_, _)
	set('n', '<leader>rn', vim.lsp.buf.rename, {})
	set('n', '<leader>ca', vim.lsp.buf.code_action, {})
	set('n', 'gd', vim.lsp.buf.definision, {})
	set('n', 'gi', vim.lsp.buf.implematation, {})
	set('n', 'gs', require('telescope.builtin').lsp_references, {})
	set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').lua_ls.setup{on_attach = on_attach, capabilities = capabilities}
require('lspconfig').clangd.setup{on_attach = on_attach, capabilities = capabilities}
require('lspconfig').gopls.setup{on_attach = on_attach, capabilities = capabilities,
  settings = {
    gopls = {
      analyses = {
        assign = true,
        atomic = true,
        bools = true,
        composites = true,
        copylocks = true,
        deepequalerrors = true,
        embed = true,
        errorsas = true,
        fieldalignment = true,
        httpresponse = true,
        ifaceassert = true,
        loopclosure = true,
        lostcancel = true,
        nilfunc = true,
        nilness = true,
        nonewvars = true,
        printf = true,
        shadow = true,
        shift = true,
        simplifycompositelit = true,
        simplifyrange = true,
        simplifyslice = true,
        sortslice = true,
        stdmethods = true,
        stringintconv = true,
        structtag = true,
        testinggoroutine = true,
        tests = true,
        timeformat = true,
        unmarshal = true,
        unreachable = true,
        unsafeptr = true,
        unusedparams = true,
        unusedresult = true,
        unusedvariable = true,
        unusedwrite = true,
        useany = true,
      },
      hoverKind = "FullDocumentation",
      linkTarget = "pkg.go.dev",
      usePlaceholders = true,
      vulncheck = "Imports",
    },
  },
}
require('lspconfig').kotlin_language_server.setup{on_attach = on_attach, capabilities = capabilities}
require('lspconfig').pyright.setup{on_attach = on_attach, capabilities = capabilities}
--[[
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
]]
---@diagnostic disable-next-line: undefined-global
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)


