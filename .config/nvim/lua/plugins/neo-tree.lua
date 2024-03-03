return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", 
      "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal left<CR>')
        require("neo-tree").setup({
          window = {
            mappings = {
              ["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
            }
          },
            filesystem = {
                filtered_items = {
                    visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
                    hide_dotfiles = false,
                    hide_gitignored = true,
                },
            }
        })
    end
}
