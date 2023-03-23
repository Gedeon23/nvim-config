
-- 	=================
-- 	NEOVIM - SETTINGS
-- 	=================

vim.wo.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = " "


--	============
--	LAZY - SETUP
--	============

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {
	defaults = { lazy = true },
	install = { colorscheme = { "nord" } },
	checker = { enabled = true },
	change_detection = {
		notify = false,
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"matchit",
				"matchparen",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})


--	===========
--	LSP - SETUP
--	===========

local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})


--	==============
--	SNIPPET CONFIG
--	==============

ls = require("luasnip")
ls.config.set_config({
	enable_autosnippets = true,
})


--	===============
--  KEYMAP - CONFIG
--  ===============

local telescope = require("telescope")
local builtin = require("telescope.builtin")

-- TELESCOPES
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fb", telescope.extensions.file_browser.file_browser , { noremap = true })
vim.keymap.set("n", "<leader>fs", telescope.extensions.luasnip.luasnip, {})

-- OTHER
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<leader>l", vim.cmd.Lazy)
vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
