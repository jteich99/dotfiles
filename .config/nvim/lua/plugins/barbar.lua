return {
    "romgrk/barbar.nvim",
    config = function()
        require('lazy').setup {
            {
                'romgrk/barbar.nvim',
                dependencies = {
                    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
                    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
                },
                init = function() vim.g.barbar_auto_setup = false end,
                opts = {
                  -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
                  -- animation = true,
                  -- insert_at_start = true,
                  -- …etc.
                },
                version = '^1.0.0', -- optional: only update when a new 1.x version is released
            },
        }

        -- keymaps
        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }
        -- closing buffer
        map('n', '<leader>c', '<Cmd>BufferClose<CR>', opts)
        map('n', '<leader>C', '<Cmd>BufferCloseAllButCurrent<CR>', opts)
        -- moving in between buffers 
        map('n', '<A-h>', '<Cmd>BufferPrevious<CR>', opts)
        map('n', '<A-l>', '<Cmd>BufferNext<CR>', opts)
        -- moving buffers 
        map('n', '<A-L>', '<Cmd>BufferMovePrevious<CR>', opts)
        map('n', '<A-H>', '<Cmd>BufferMoveNext<CR>', opts)
        -- buffer pick
        map('n', '<leader>b', '<Cmd>BufferPick<CR>', opts)
    end
}
