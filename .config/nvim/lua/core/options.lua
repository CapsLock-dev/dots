local opt = vim.o

-- other
opt.number = true
opt.relativenumber = true
opt.sidescrolloff = 5
opt.scrolloff = 5
opt.fileencoding="utf-8"
opt.noswapfile=true
opt.clipboard="unnamedplus"

-- tabs, indents
opt.shiftwidth = 4
opt.tabstop = 4
opt.autoindent = true
opt.smarttab = true
opt.noexpandtab = true

-- split
opt.splitbelow = true
opt.splitright = true

-- colorscheme/appearance
opt.termguicolors = true
opt.background = "dark"
vim.cmd([[colorscheme habamax]])
opt.cursorline = true
opt.linebreak = true
opt.showmode = false
