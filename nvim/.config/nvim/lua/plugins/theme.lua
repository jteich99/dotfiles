return {
    -- "folke/tokyonight.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- opts = {},
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,

    config  = function()
        -- vim.cmd.colorscheme "tokyonight-night"
        vim.cmd.colorscheme "catppuccin"
        require("catppuccin").setup({
            flavour = "auto",
            background = {
                light = "latte",
                dark = "mocha"
            },
            auto_integrations = true
        })
    end
}
