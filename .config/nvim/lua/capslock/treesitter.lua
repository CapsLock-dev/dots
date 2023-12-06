require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    sync_install = false,
    ignore_install = { "" },
    auto_install = true,
    highlight = {
        enable = true,
        disable = { "" },
        additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
    textobjects = {
        enable = true,
        lookahead = true,
        keymaps = {
        },
        goto_next = {
            ["[["] = "@function.outer",
            ["[m"] = "@class.outer",
        },
        goto_previous = {
            ["]]"] = "@function.outer",
            ["]m"] = "@class.outer",
        },
    }
}
