return {
	{ 
		"mbbill/undotree",
		event = "BufEnter", 
	},

	{
		"gennaro-tedesco/nvim-possession",
		dependencies = {
			"ibhagwan/fzf-lua",
		},
		enable = false,
		config = true,
		autoswitch = {
			enable = true,
		},
		init = function()
			local possession = require("nvim-possession")
			vim.keymap.set("n", "<leader>sl", function()
				possession.list()
			end)
			vim.keymap.set("n", "<leader>sn", function()
				possession.new()
			end)
			vim.keymap.set("n", "<leader>su", function()
				possession.update()
			end)
		end,
	},

	{
		"iurimateus/luasnip-latex-snippets.nvim",
		-- replace "lervag/vimtex" with "nvim-treesitter/nvim-treesitter" if you're
		-- using treesitter.
		dependencies = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
		config = function()
			require'luasnip-latex-snippets'.setup({ use_treesitter = true })
		end,
		ft = "tex",
	},
}
