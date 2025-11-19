local function test()
    return true
end

return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        bigfile = { enabled = true },
        dim = { enabled = true },
        lazygit = { enabled = true },
        quickfile = { enabled = true },
        zen = { enabled = true },
    },
    keys = {
        -- Top Pickers & Explorer
        { "<leader>lz", function() Snacks.lazygit.open() end, desc = "Lazygit open" }, },
    config = function()
        require("snacks").dim()
    end
}
