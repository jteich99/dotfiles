return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config  = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>fc', '<cmd>:Telescope current_buffer_fuzzy_find<cr>')
            vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
            require('telescope').setup{
                defaults = {
                    mappings = {
                        n = {
                            ['<C-d>'] = require('telescope.actions').delete_buffer
                        },
                        i = {
                            ['<C-d>'] = require('telescope.actions').delete_buffer
                        }
                    }
                }
            }
        end
    }
}
