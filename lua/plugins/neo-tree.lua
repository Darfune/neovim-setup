require("neo-tree").setup({
	source_selector = {
		winbar = false,
		statusline = false
	},
	window = {
    mappings = {
      ["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
    }
  },
	close_if_last_window = false,
})
vim.keymap.set('n','<M-1>','<Cmd>Neotree toggle<CR>')
