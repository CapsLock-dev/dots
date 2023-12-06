set relativenumber
:set tabstop=4
:set smarttab
:set autoindent
:set noswapfile
:set clipboard=unnamedplus
:set number
:set cursorline
:set shiftwidth=4
:set expandtab
:set scrolloff=8
:set sidescrolloff=8
:set cmdheight=2
:set fileencoding=utf-8
:set showtabline=2
:set smartindent
:set noshowmode
:set smartcase
:set splitbelow
:set splitright
:set termguicolors
:set pumheight=30
:set lbr " Word wrapping

call plug#begin('~/.config/nvim/plugged')

" Other
Plug 'nvim-lua/plenary.nvim'

"Appearance
Plug 'folke/tokyonight.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'vim-airline/vim-airline'
Plug 'lukas-reineke/indent-blankline.nvim'

" Colorschemes
Plug 'sainnhe/gruvbox-material'

" Navigation
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'nvim-treesitter/nvim-treesitter-textobjectsPlug '
Plug 'nvim-tree/nvim-tree.lua'
Plug 'akinsho/bufferline.nvim'
Plug 'akinsho/toggleterm.nvim', { 'tag': '*' }

" QOL
Plug 'windwp/nvim-autopairs'

" CMP & LSP
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'neovim/nvim-lspconfig'

call plug#end()

lua require('capslock')

let g:airline_theme = 'gruvbox_material'
let g:gruvbox_material_transparent_background = 1
colorscheme gruvbox-material

nnoremap <nowait><silent> <C-x> :noh<CR> " Remove search highlighting
nnoremap <silent> <C-n><C-o> :NvimTreeFindFileToggle<CR> "  Toggle nvim tree 
nnoremap <silent> <C-n><C-f> :NvimTreeFocus<CR> " Focus on nvim tree 
nnoremap <silent> <C-H> :bprev<CR> " Bufferline prev
nnoremap <silent> <C-L> :bnext<CR> " Bufferline next
