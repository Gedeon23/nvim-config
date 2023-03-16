
return {

--	================
--	PLUGINS - CONFIG
--	================

	"folke/which-key.nvim",
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{ "nvim-telescope/telescope.nvim", tag = "0.1.1",
		cmd = "Telescope",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	"mbbill/undotree",


--	==============
--	THEME - CONFIG
--	==============

	{ "nordtheme/vim", lazy = false, priority = 1000, 
		config = function()
			vim.cmd[[colorscheme nord]]
		end,
	},

--	============
--	LSP - CONFIG
--	============

	{
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  dependencies = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},             -- Required
	    {'williamboman/mason.nvim'},           -- Optional
	    {'williamboman/mason-lspconfig.nvim'}, -- Optional

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},         -- Required
	    {'hrsh7th/cmp-nvim-lsp'},     -- Required
	    {'hrsh7th/cmp-buffer'},       -- Optional
	    {'hrsh7th/cmp-path'},         -- Optional
	    {'saadparwaiz1/cmp_luasnip'}, -- Optional
	    {'hrsh7th/cmp-nvim-lua'},     -- Optional

	    -- Snippets
	    {'L3MON4D3/LuaSnip'},             -- Required
	    {'rafamadriz/friendly-snippets'}, -- Optional
	  }
	},
}
