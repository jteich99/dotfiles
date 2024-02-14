return {
    'numToStr/Comment.nvim',
    opts = {
    },
    lazy = false,
    config = function()
        require('Comment').setup{
            toggler = {
                line = '<leader>/',
            },
            opleader = {
                line = '<leader>/',
            },
        }
    end
}

