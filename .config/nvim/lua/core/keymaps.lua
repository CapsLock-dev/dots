local kmap = vim.keymap
local cmd = vim.cmd

vim.g.mapleader = " "
kmap.set("n", "<leader>n", ":NvimTreeFindFileToggle<CR> ", {silent = true, noremap = true})
kmap.set("n", "<leader>f", ":NvimTreeFocus<CR> ", {silent = true, noremap = true})
kmap.set("n", "<leader>x", ":noh<CR>", {silent = true, noremap = true})
kmap.set("n", "<leader>j", ":bprev<CR>", {silent = true, noremap = true})
kmap.set("n", "<leader>k", ":bnext<CR>", {silent = true, noremap = true})
kmap.set("n", "<leader>tf", ":Telescope find_files<CR>", {silent = true, noremap = true})
kmap.set("n", "<leader>tt", ":Telescope lsp_document_symbols<CR>", {silent = true, noremap = true})
kmap.set("n", "<leader>s", ":ClangdSwitchSourceHeader<CR>", {silent = true, noremap = true})
