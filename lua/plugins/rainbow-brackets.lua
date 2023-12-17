-- local config = function()
-- 	require("rainbow-delimiters.setup").setup({
-- 		strategy = {
-- 			-- 	[""] = rainbow_delimiters.strategy.global,
-- 			-- 	commonlisp = rainbow_delimiters.strategy.local,
-- 		},
-- 		query = {
-- 			[""] = "rainbow-delimiters",
-- 			latex = "rainbow-blocks",
-- 		},
-- 		highlight = {
-- 			vim.api.nvim_set_hl(0, "RainbowDelimiterRed", { fg = "#E06C75" }),
-- 			vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = "#F1FA8C" }),
-- 			vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", { fg = "#61AFEF" }),
-- 			vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = "#D19A66" }),
-- 			vim.api.nvim_set_hl(0, "RainbowDelimiterGreen", { fg = "#98C379" }),
-- 			vim.api.nvim_set_hl(0, "RainbowDelimiterViolet", { fg = "#C678DD" }),
-- 			vim.api.nvim_set_hl(0, "RainbowDelimiterCyan", { fg = "#56B6C2" }),
-- 		},
-- 		blacklist = {},
-- 	})
-- end

return {
	"HiPhish/rainbow-delimiters.nvim",
	-- config = config,
}
