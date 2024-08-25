return {
    'numToStr/Comment.nvim',
    opts = {
    },
    lazy = false,
    config = function()
        local ft = require('Comment').setup({
            toggler = {
                line = '<leader>/',
            },
            opleader = {
                line = '<leader>/',
            },
            ignore = '^$'
        })
        -- ft.set('foam', '// %s')
        -- ft.foam = '//%s'
        local ft = require('Comment.ft') 
        ft.set('foam','// %s')
    end
}

