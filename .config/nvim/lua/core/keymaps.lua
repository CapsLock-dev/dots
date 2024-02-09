local kmap = vim.keymap
local cmd = vim.cmd

vim.g.mapleader = " "
kmap.set("n", "<leader>n", ":NvimTreeFindFileToggle<CR> ", {silent = true, noremap = true})
kmap.set("n", "<leader>f", ":NvimTreeFocus<CR> ", {silent = true, noremap = true})
kmap.set("n", "<leader>x", ":noh<CR>", {silent = true, noremap = true})
kmap.set("n", "<leader>j", ":bprev<CR>", {silent = true, noremap = true})
kmap.set("n", "<leader>k", ":bnext<CR>", {silent = true, noremap = true})
