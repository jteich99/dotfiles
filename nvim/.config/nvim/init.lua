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
-- vim.opt.clipboard = "xclip"


local opts = {}

require("keybindings")
require("lazy").setup("plugins")
