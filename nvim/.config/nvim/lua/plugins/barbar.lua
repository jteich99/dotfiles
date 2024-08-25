return {
    "romgrk/barbar.nvim",
    dependencies = {
        'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
        'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
    config = function()
        vim.g.barbar_auto_setup = false 
        require('barbar').setup{
            highlight_visible = true, 
            insert_at_end = true,
            icons = {
                separator = {left = '▎', right = ''},
                separator_at_end = true,
            },
            sidebar_filetypes = {
                NvimTree = true,
                undotree = {
                    text = 'undotree',
                    align = 'center',
                },
            ['neo-tree'] = {event = 'BufWipeout'},
            Outline = {event = 'BufWinLeave', text = 'symbols-outline', align = 'right'},
            },
        }
    end
}
