-- lazy.nvim
return {
  'lewis6991/hover.nvim',
  config = function()
    require('hover').setup({
      init = function()
        require('hover.providers.lsp')
      end
    })
    vim.keymap.set('n', 'K', require('hover').hover, { desc = "Enhanced hover" })
  end
}
