local config = function()
	require("nvim-treesitter.configs").setup({
		indent = {
			enable = true,
		},
		autotag = {
			enable = true,
		},
		ensure_installed = {
			"markdown",
			"json",
			"javascript",
			"yaml",
			"kotlin",
			"c",
			"html",
			"css",
			"go",
			"gomod",
			"gosum",
			"gowork",
			"templ",
			"bash",
			"lua",
			"dockerfile",
			"gitignore",
			"python",
		},
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},
	})
	local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
	parser_config.gotmpl = {
		install_info = {
			url = "https://github.com/ngalaiko/tree-sitter-go-template",
			branch = "fix_brackets",
			files = { "src/parser.c" },
		},
		filetype = "gotmpl",
		used_by = { "gohtmltmpl", "gotexttmpl", "gotmpl", "html" },
	}
end

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	config = config,
}
