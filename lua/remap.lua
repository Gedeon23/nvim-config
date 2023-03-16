-- local builtin = require("telescope.builtin")

vim.g.mapleader = " "


vim.keymap.set("n", "<leader>.", vim.cmd.Ex)
-- vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) -- telescope mapping
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
