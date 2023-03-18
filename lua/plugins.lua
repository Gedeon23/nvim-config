
return {

--	================
--	PLUGINS - CONFIG
--	================

	{
		    "folke/which-key.nvim",
		    config = function()
			      vim.o.timeout = true
			      vim.o.timeoutlen = 300
			      require("which-key").setup()
		    end,
	},
	{'romgrk/barbar.nvim', dependencies = 'nvim-tree/nvim-web-devicons'},
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{ "nvim-telescope/telescope.nvim", tag = "0.1.1",
		cmd = "Telescope",
		event = "BufEnter",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{ "nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim"},
		event = "BufEnter",
	},
	{ "mbbill/undotree",
	  event = "BufEnter", },
	{
	    "gennaro-tedesco/nvim-possession",
	    dependencies = {
		"ibhagwan/fzf-lua",
	    },
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
