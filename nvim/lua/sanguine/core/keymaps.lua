-- keymaps:

-- concise
local keymap = vim.keymap

-- leader key
vim.g.mapleader = " "

-- normal mode
keymap.set("n", "<leader>q", "<cmd>:q<cr>")
keymap.set("n", "<leader>w", "<cmd>:w<cr>")
keymap.set("n", "<leader>x", "<cmd>:x<cr>")

-- insert mode
keymap.set("i", "jj", "<esc>")
