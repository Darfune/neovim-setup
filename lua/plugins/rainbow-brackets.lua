local config = function()
	local highlight = {
		vim.api.nvim_set_hl(10, "RainbowDelimiterCyan", { fg = "#8BE9FD" }),
		vim.api.nvim_set_hl(0, "RainbowDelimiterRed", { fg = "#FF5555" }),
		vim.api.nvim_set_hl(0, "RainbowDelimiterViolet", { fg = "#BD93F9" }),
		vim.api.nvim_set_hl(0, "RainbowDelimiterGreen", { fg = "#50FA7B" }),
		vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = "#FFB86C" }),
		vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", { fg = "#61AFEF" }),
		vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = "#F1FA8C" }),
	}

	require("rainbow-delimiters.setup").setup({
		indent = {
			highlight = highlight,
		},
	})
end

return {
	"HiPhish/rainbow-delimiters.nvim",
	config = config,
}
