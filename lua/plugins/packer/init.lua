-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  -- Telescope fuzzy finder
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
--	  or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }


  use 'Mofiqul/dracula.nvim'

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

--  use {
--	  "nvim-neo-tree/neo-tree.nvim",
--	  branch = "v3.x",
--	  requires = {
--		  "nvim-lua/plenary.nvim",
--		  "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
--		  "MunifTanjim/nui.nvim",
--		  "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
--	  }
--  }

use {
	'nvim-tree/nvim-tree.lua',
	requires = {
		'nvim-tree/nvim-web-devicons', -- optional
	},
}


  use{'williamboman/mason.nvim'}
  use{'williamboman/mason-lspconfig.nvim'}
  use{'neovim/nvim-lspconfig'}
  use{'hrsh7th/nvim-cmp'}
  use{'hrsh7th/cmp-nvim-lsp'}

  use {'rcarriga/nvim-notify'}

  use {
	  'nvim-lualine/lualine.nvim',
  }

  use {'saadparwaiz1/cmp_luasnip'} -- Snippets source for nvim-cmp
  use {'L3MON4D3/LuaSnip'} -- Snippets plugin
  use {'lewis6991/gitsigns.nvim'} -- OPTIONAL: for git status
  use {'romgrk/barbar.nvim'}
  use {'onsails/lspkind-nvim'}
end)
