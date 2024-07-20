local opt = vim.o

-- other
opt.number = true
opt.relativenumber = true
opt.sidescrolloff = 5
opt.scrolloff = 5
opt.swapfile = false
opt.fileencoding="utf-8"
opt.clipboard="unnamedplus"

-- tabs, indents
opt.shiftwidth = 4
opt.tabstop = 4
opt.autoindent = true
opt.smarttab = true
opt.expandtab = false

-- split
opt.splitbelow = true
opt.splitright = true

-- colorscheme/appearance
opt.termguicolors = true
opt.background = "dark"

-- vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_better_performance = 1
vim.g.gruvbox_material_transparent_background = 1
vim.cmd([[colorscheme gruvbox-material]])

opt.cursorline = true
opt.linebreak = true
opt.showmode = false
