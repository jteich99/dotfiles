return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    -- "foam_ls",
                    "clangd",
                    "texlab",
                    -- "ltex",
                    -- comento los LSP de c++ y de openFOAM porque no funcionan bien cuando estoy desarrollando actuationDisks
                    -- "pyright",
                    -- "jedi_language_server",
                    "pylsp"
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup {}
            -- lspconfig.foam_ls.setup {}
            lspconfig.clangd.setup {}
            lspconfig.texlab.setup {}
            -- lspconfig.ltex.setup {}
            -- lspconfig.pyright.setup {}
            -- lspconfig.jedi_language_server.setup {}
            lspconfig.pylsp.setup {}

            vim.diagnostic.disable()
        end
    }
}
