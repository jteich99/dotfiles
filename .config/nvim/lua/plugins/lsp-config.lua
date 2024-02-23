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
                    "foam_ls",
                    "clangd",
                    "texlab",
                    "ltex",
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
            lspconfig.foam_ls.setup {}
            lspconfig.clangd.setup {}
            lspconfig.texlab.setup {}
            lspconfig.ltex.setup {}
            -- lspconfig.pyright.setup {}
            -- lspconfig.jedi_language_server.setup {}
            lspconfig.pylsp.setup {}

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

            vim.diagnostic.disable()
            local diagnostics_active = false 
            vim.keymap.set('n', '<leader>d', function()
                diagnostics_active = not diagnostics_active
                if diagnostics_active then
                    vim.diagnostic.show()
                    vim.diagnostic.enable()
                else
                    vim.diagnostic.hide()
                    vim.diagnostic.disable()
                end
            end)
        end
    }
}
