return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {"cpp", "python", "lua", "vim", "markdown", "markdown_inline", "fortran"},
            sync_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}

