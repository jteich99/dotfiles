return {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
    },
    config = function()
        vim.opt_local.conceallevel = 1
        require("obsidian").setup({
            workspaces = {
                {
                    name = "juani-sync",
                    path = "~/Documents/juani-sync",
                },
                {
                    name = "juani-vault1",
                    path = "~/repos/juani-vault1",
                },
            },
            preferred_link_style = "wiki",
            -- daily_notes = {
            --     folder = "01-Personal/daily-notes",
            -- },
        })
        vim.keymap.set("n", "gf", function()
            if require("obsidian").util.cursor_on_markdown_link() then
                return "<cmd>ObsidianFollowLink<CR>"
            else
                return "gf"
            end
        end, { noremap = false, expr = true })
    end
}
