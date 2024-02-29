vim.g.mapleader = ' ' -- Space as leader key

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.o.wrap = true

vim.cmd("set number")

-- Easy write and quit
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')

-- Close current buffer
-- vim.keymap.set('n', '<leader>c', ':BufDel<cr>')

-- Resize with arrows
vim.keymap.set( 'n', "<C-Up>" , ":resize -2<CR>")
vim.keymap.set( 'n', "<C-Down>" , ":resize +2<CR>")
vim.keymap.set( 'n', "<C-Left>" , ":vertical resize -2<CR>")
vim.keymap.set( 'n', "<C-Right>" , ":vertical resize +2<CR>")

-- Move current line / block with Alt-j/k a la vscode.
vim.keymap.set( 'n', "<A-j>" , ":m .+1<CR>==")
vim.keymap.set( 'n', "<A-k>" , ":m .-2<CR>==")

-- Better window movement
vim.keymap.set( 'n', "<C-h>" , "<C-w>h")
vim.keymap.set( 'n', "<C-j>" , "<C-w>j")
vim.keymap.set( 'n', "<C-k>" , "<C-w>k")
vim.keymap.set( 'n', "<C-l>" , "<C-w>l")

-- Visual Mode
-- Move current line / block with Alt-j/k ala vscode.
vim.keymap.set('v', "<A-j>" , ":m '>+1<CR>gv-gv")
vim.keymap.set('v', "<A-k>" , ":m '<-2<CR>gv-gv")

-- Better indenting
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Insert Mode
-- Move current line / block with Alt-j/k ala vscode.
vim.keymap.set( "i" , "<A-j>" , "<Esc>:m .+1<CR>==gi")
vim.keymap.set( "i" , "<A-k>" , "<Esc>:m .-2<CR>==gi")
-- Easy moving in insert mode
vim.keymap.set( "i" , "<A-Up>" , "<C-\\><C-N><C-w>k")
vim.keymap.set( "i" , "<A-Down>" , "<C-\\><C-N><C-w>j")
vim.keymap.set( "i" , "<A-Left>" , "<C-\\><C-N><C-w>h")
vim.keymap.set( "i" , "<A-Right>" , "<C-\\><C-N><C-w>l")

-- PLUGINS
-- barbar
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
--

-- lsp-config
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

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
--

-- telescope
-- local builtin = require("telescope.builtin")
-- vim.keymap.set('n', '<leader>ff', telescope.builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', telescope.builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fc', '<cmd>:Telescope current_buffer_fuzzy_find<cr>')
-- vim.keymap.set('n', '<leader>fb', telescope.builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', telescope.builtin.help_tags, {})
--

-- toggleterm
vim.keymap.set('n', '<M-1>', ":ToggleTerm direction=horizontal<cr>")
vim.keymap.set('n', '<M-2>', ":ToggleTerm direction=vertical size=100<cr>")
vim.keymap.set('n', '<M-3>', ":ToggleTerm direction=float<cr>")
vim.keymap.set('t', '<C-l>', [[<C-\><C-n>]])
--
