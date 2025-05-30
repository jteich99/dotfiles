return {
    {
        "williamboman/mason.nvim",
        config = true
        -- config = function()
        --     require("mason").setup()
        -- end
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
                    "marksman"
                },
                automatic_installation = true
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
                        load_langs = { "en-US", "es" },
                        init_check = true,
                        -- path = '.local/share/nvim/mason/packages/ltex-ls',
                        -- path = ".vscode",
                        -- path = vim.fn.expand('~') .. '/.local/share/ltex',
                    })
                    require("ltex_extra").reload()
                end,
                settings = {
                    ltex = {
                        language = "en,es",
                        latex = {
                            -- commands = {"cite{}": 'ignore'}
                        }
                    }
                },
                filetypes = {"markdown", "tex"},
            }
            -- lspconfig.pyright.setup {}
            lspconfig.jedi_language_server.setup {}
            -- lspconfig.pylsp.setup {}
            lspconfig.marksman.setup {}

            vim.diagnostic.enable()
        end
    }
}
