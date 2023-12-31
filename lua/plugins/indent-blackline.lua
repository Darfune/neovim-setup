local config = function()
	local highlight = {
		"RainbowCyan",
		"RainbowViolet",
		"RainbowGreen",
		"RainbowOrange",
		"RainbowBlue",
		"RainbowYellow",
		"RainbowRed",
	}

	local hooks = require("ibl.hooks")
	-- create the highlight groups in the highlight setup hook, so they are reset
	-- every time the colorscheme changes
	hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
		vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#944046" })
		vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#8d9261" })
		vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
		vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
		vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
		vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
		vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
	end)
	vim.g.rainbow_delimiters = { highlight = highlight }
	require("ibl").setup({ indent = { highlight = highlight } })
	hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
end

return {
	"lukas-reineke/indent-blankline.nvim",
	lazy = false,
	-- main = "ibl",
	opts = {},
	config = config,
}
