-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	sort = {
		folders_first = true,
		sorter = "extension"
	},
	view = {
		width = 25,
	}
})
