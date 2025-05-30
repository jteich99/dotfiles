local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- required by nvim-notify
vim.opt.termguicolors = true

vim.opt.clipboard = "unnamedplus"
-- vim.opt.clipboard = ""
-- clipboard = "xclip"

vim.opt.cursorline = true

-- sync with system clipboard on focus
vim.api.nvim_create_autocmd({ "FocusGained" }, {
    pattern = { "*" },
    command = [[call setreg("@", getreg("+"))]],
})

-- sync with system clipboard on focus
vim.api.nvim_create_autocmd({ "FocusLost" }, {
    pattern = { "*" },
    command = [[call setreg("+", getreg("@"))]], 
})

local opts = {}

-- Enable spell-check for Markdown files
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "markdown",
--   callback = function()
--     vim.opt.spell = true
--     vim.opt.spelllang = "en,es"  -- Both languages
--   end,
-- })

-- Line numbers
-- vim.opt.number = true
vim.opt.relativenumber = true

require("keybindings")
require("lazy").setup("plugins")
