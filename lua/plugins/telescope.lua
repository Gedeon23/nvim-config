return {
	{ 
		"nvim-telescope/telescope.nvim", version = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function() 
			require("telescope").setup({
				extnesions = {
					file_browser = {
						hijack_netrw = true,
					},
				},
			})
			require("telescope").load_extension "file_browser"
		end, 
	},

	{ 
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		event = "BufEnter", 
	},
}
