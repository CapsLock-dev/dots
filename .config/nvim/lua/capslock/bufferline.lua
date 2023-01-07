require("bufferline").setup{
    options = {
        diagnostics = "nvim_lsp",
        diagnostic_update_in_insert = false,
        diagnostics_indicator = function(count, level)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,
        offsets = {
            {
                filetype = "NvimTree",
                text = "NvimTree",
                highlight = "Directory",
                separator = true
            }
        },
    }
}
