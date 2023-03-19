return {
	{ 
		"nvim-telescope/telescope.nvim", version = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function() 
			local telescope = require("telescope")
			telescope.setup({
				extnesions = {
					file_browser = {
						hijack_netrw = true,
					},
					luasnip = {
						search = function(entry)
							return lst.filter_null(entry.context.trigger) .. " " ..
							lst.filter_null(entry.context.name) .. " " ..
							entry.ft .. " " ..
							lst.filter_description(entry.context.name, entry.context.description) ..
							lst.get_docstring(luasnip, entry.ft, entry.context)[1]
						end
					},
				},
			})
			telescope.load_extension "file_browser"
			telescope.load_extension "luasnip"
		end, 
	},

	{ 
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		event = "BufEnter", 
	},

	{
		"benfowler/telescope-luasnip.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"L3MON4D3/LuaSnip",
		},
	},
}
