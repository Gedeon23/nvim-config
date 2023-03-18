-- local builtin = require("telescope.builtin")
-- local telescope = require("telescope")

vim.g.mapleader = " "


vim.keymap.set("n", "<leader>.", vim.cmd.Ex)
-- vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) -- telescope mapping
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<leader>l", vim.cmd.Lazy)

-- vim.keymap.set("n", "<space>fb", telescope.extensions.file_browser.file_browser , { noremap = true })
