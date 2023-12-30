local on_attach = require("util.lsp").on_attach -- Get keybinds from util/lsp.lua

local config = function()
	require("neoconf").setup({})

	local cmp_nvim_lsp = require("cmp_nvim_lsp")

	local lspconfig = require("lspconfig")

	local diagnostic_signs = { Error = " ", Warn = " ", Hint = "󰛨 ", Info = "" }
	for type, icon in pairs(diagnostic_signs) do
		local hl = "DiagnosticSign" .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
	end

	local capabilities = cmp_nvim_lsp.default_capabilities()

	-----------------------------------------------------------
	-- Lua lsp setup
	-----------------------------------------------------------
	-- LSP
	lspconfig.lua_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			Lua = {
				-- make the language server recognize "vim" global
				diagnostics = {
					globals = { "vim" },
				},
				workspace = {
					-- make language server aware of runtime files
					library = {
						[vim.fn.expand("$VIMRUNTIME/lua")] = true,
						[vim.fn.stdpath("config") .. "/lua"] = true,
					},
				},
			},
		},
	})
	-- Linter
	local luacheck = require("efmls-configs.linters.luacheck")
	-- Formatter
	local stylua = require("efmls-configs.formatters.stylua")

	-----------------------------------------------------------
	-- Python lsp setup
	-----------------------------------------------------------
	-- LSP
	lspconfig.pyright.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			pyright = {
				disableOrganizeImports = false,
				analysis = {
					useLibraryCodeForTypes = true,
					autoSearchPaths = true,
					diagnosticMode = "workspace",
					autoImportCompletions = true,
				},
			},
		},
	})
	-- Linter
	local flake8 = require("efmls-configs.linters.flake8")
	-- Formatter
	local black = require("efmls-configs.formatters.black")

	-----------------------------------------------------------
	-- Go lsp setup
	-----------------------------------------------------------
	-- LSP
	lspconfig.gopls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "go", "gomod", "gosum", "gowork" },
		settings = {
			gopls = {
				analyses = {
					unusedparams = true,
					unreachable = true,
					nilness = true,
					shadow = true,
					unusedwrite = true,
					useany = true,
					unusedvariable = true,
					nilfunc = true,
					lostcancel = true,
				},
				codelenses = {
					generate = true,
					gc_details = true,
					test = true,
					tidy = true,
					upgrade_dependency = true,
					vendor = true,
					regenerate_cgo = true,
					run_govulncheck = true,
				},
				usePlaceholders = true,
				completeUnimported = true,
				staticcheck = true,
				matcher = "fuzzy",
				diagnosticsDelay = "500ms",
				symbolMatcher = "FastFuzzy",
				symbolStyle = "Dynamic",
				gofumpt = true,
				buildFlags = { "-tags", "integration" },
				expandWorkspaceToModule = true,
				semanticTokens = true,
				hints = {
					assignVariableTypes = true,
					constantValues = true,
					parameterNames = true,
				},
			},
		},
	})
	-- Linter
	local revive = require("efmls-configs.linters.go_revive")
	-- Formatter
	local gofumpt = require("efmls-configs.formatters.gofumpt")

	-----------------------------------------------------------
	-- Templ lsp setup
	-----------------------------------------------------------
	-- LSP
	lspconfig.templ.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "gotmpl" },
	})

	-----------------------------------------------------------
	-- Emmet  lsp setup (javascript, html, css and variants
	-----------------------------------------------------------
	-- LSP
	lspconfig.emmet_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = {
			"html",
			"typescriptreact",
			"javascriptreact",
			"javascript",
			"css",
			"sass",
			"scss",
			"less",
			"svelte",
			"vue",
		},
	})
	-- Linters
	local djlint = require("efmls-configs.linters.djlint") -- For Html and other
	local stylelint = require("efmls-configs.linters.stylelint") -- For Css  · Sass · SCSS · Less
	local eslint_d = require("efmls-configs.linters.eslint_d") -- For Javascript · TypeScript
	-- Formatter
	local prettierd = require("efmls-configs.formatters.prettier_d") -- For JavaScript · TypeScript · Flow · JSX · JSON · CSS · SCSS · Less · HTML · Vue · Angular · GraphQL · Markdown · YAML

	-----------------------------------------------------------
	-- Kotlin lsp setup
	-----------------------------------------------------------
	-- LSP
	lspconfig.kotlin_language_server.setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})
	-- Linter
	--local revive = require("efmls-configs.linters.")
	-- Formatter
	--local  = require("efmls-configs.formatters.")

	-----------------------------------------------------------
	-- Json lsp setup
	-----------------------------------------------------------
	-- LSP
	lspconfig.jsonls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "json", "jsonc" },
	})
	-- Linter
	---@eslint_d
	-- Formatter
	---@prettierd

	-----------------------------------------------------------
	-- C & C++ lsp setup
	-----------------------------------------------------------
	-- LSP
	lspconfig.clangd.setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})
	-- Linter
	local cpplint = require("efmls-configs.linters.cpplint")
	-- Formatter
	local clang_format = require("efmls-configs.formatters.clang_format")

	-----------------------------------------------------------
	-- Configuration of efm server
	-----------------------------------------------------------
	lspconfig.efm.setup({
		filetypes = {
			"lua",
			"python",
			"go",
			"html",
			"css",
			"javascript",
			"json",
			"c",
			"cpp",
			"gotempl"
		},
		init_options = {
			documentFormatting = true,
			documentRangeFarmatting = true,
			hover = true,
			documentSymbol = true,
			codeAction = true,
			completion = true,
		},
		settings = {
			languages = {
				lua = { luacheck, stylua },
				python = { flake8, black },
				go = { revive, gofumpt },
				gotempl = { djlint, prettierd },
				html = { djlint, prettierd },
				css = { stylelint, prettierd },
				javascript = { eslint_d, prettierd },
				json = { eslint_d, prettierd },
				c = { cpplint, clang_format },
				cpp = { cpplint, clang_format },
			},
		},
	})
end

return {
	"neovim/nvim-lspconfig",
	config = config,
	lazy = false,
	dependencies = {
		"windwp/nvim-autopairs",
		"williamboman/mason.nvim",
		"creativenull/efmls-configs-nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
	},
}
