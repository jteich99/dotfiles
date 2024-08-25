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
                    "ltex",
                    -- comento los LSP de c++ y de openFOAM porque no funcionan bien cuando estoy desarrollando actuationDisks
                    -- "pyright",
                    "jedi_language_server",
                    -- "pylsp"
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
            lspconfig.ltex.setup {
                capabilities = capabilities,
                -- on_attach = on_attach,
                on_attach = function(client, bufnr)
                    require("ltex_extra").setup({
                        -- load_langs = { 'en-US' },
                        init_check = true,
                        load_langs = { 'es' },
                        -- path = '.local/share/nvim/mason/packages/ltex-ls',
                        -- path = ".vscode",
                        -- path = vim.fn.expand('~') .. '/.local/share/ltex',
                    })
                    require("ltex_extra").reload()
                end,
                settings = {
                    ltex = {
                        language = 'es',
                        latex = {
                            -- commands = {"cite{}": 'ignore'}
                        }
                    }
                },
                filetypes = {'tex'},
            }
            -- lspconfig.pyright.setup {}
            lspconfig.jedi_language_server.setup {}
            -- lspconfig.pylsp.setup {}

            vim.diagnostic.disable()
        end
    }
}
