return {
    'lukas-reineke/indent-blankline.nvim',
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        require("ibl").setup {
            show_end_of_line = true,
            space_char_blankline = " ",
            show_current_context = true,
            show_current_context_start = false,
            scope = { enabled = false },
        }
    end
}
