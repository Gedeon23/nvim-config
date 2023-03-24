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
		enabled = false,
	},

	{
		"akinsho/bufferline.nvim", version= "v3.*",
		dependencies = "nvim-tree/nvim-web-devicons",
		event = "BufEnter",
		config = function()
			require("bufferline").setup()
		end,
	},

	{
		"nvim-tree/nvim-tree.lua",
		dependencies = "nvim-tree/nvim-web-devicons",
		event = "BufEnter",
		config = function()
			require("nvim-tree").setup({
				sort_by = "case_sensitive",
				renderer = {
					group_empty = true,
				},
				filters = {
					dotfiles = true,
				},
			})
		end
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
