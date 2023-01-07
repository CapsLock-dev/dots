-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 25,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = { "<C-]>", "<2-RightMouse>" },    action = "cd" },
      },
    },
  },
  renderer = {
    group_empty = true,
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = " ",
          open = " ",
          empty = " ",
          empty_open = " ",
          symlink = " ",
          symlink_open = " ",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = " ",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = " ",
      warning = " ",
      error = " ",
    },
  },
  filters = {
    dotfiles = false,
  },
})
