return {
	{ 
		"folke/which-key.nvim",
			event = "BufEnter",
			config = function()
				vim.o.timeout = true
				vim.o.timeoutlen = 300
				require("which-key").setup()
			end, 
	},

	{
		'romgrk/barbar.nvim', 
		dependencies = 'nvim-tree/nvim-web-devicons',
		event = "BufEnter",
	},

	{ 
		"nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
		event = "BufEnter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"c",
					"css",
					"javascript",
					"json",
					"lua",
					"rust",
					"tsx",
					"typescript",
					"yaml",
				},
			})
		end,
	},
}
