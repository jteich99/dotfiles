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
