require("nvim-treesitter.configs").setup {
	ensure_installed = { "c", "cpp", "lua", "vim", "bash", "json", "json5", "nasm", "typescript", "javascript", "yaml", "python", "comment", "cmake", "make" },
	ignore_install = { "" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		disable = { "" },
		additional_vim_regex_highlighting = false,
	},
	indent = { enable = true },
}
