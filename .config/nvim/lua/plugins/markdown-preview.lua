-- return {
--     "iamcco/markdown-preview.nvim",
--     cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
--     ft = { "markdown" },
--     run = function()
--         require("markdown-preview").setup({
--             cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
--         })
--         vim.fn["mkdp#util#install"]()
--     end,
-- }
-- return {
--   "iamcco/markdown-preview.nvim",
--     require("markdown-preview").setup({
--         cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
--         ft = { "markdown" },
--         build = "cd app && npm install",
--         init = function()
--             vim.g.mkdp_filetypes = { "markdown" }
--         end,
--         config = function()
--             vim.keymap.set("n", "<leader>mp", "<Plug>MarkdownPreview", { desc = "Markdown Preview" })
--         end,
--     })
-- }
return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
} 
