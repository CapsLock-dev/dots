require("core.keymaps")

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

require("lazy").setup({
	-- Navigation
	{ "nvim-tree/nvim-tree.lua", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
	{ 
		"nvim-telescope/telescope-fzf-native.nvim", 
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build" ,
	},
	{ "nvim-telescope/telescope.nvim", tag = "0.1.6", dependencies = "nvim-lua/plenary.nvim" },
	-- QOL
	{ "windwp/nvim-autopairs" },
	{ "nvim-lualine/lualine.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "nvim-treesitter/nvim-treesitter", build=":TSUpdate" },
	{'akinsho/toggleterm.nvim', version = "*", config = true},
	-- LSP
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	-- CMP
	{ 
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
	},
	-- Colorschemes
	{
		"sainnhe/gruvbox-material"
	}
})

require("core.options")
require("plugins.include")
