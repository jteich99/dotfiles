return {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    dependencies = {
        -- Required.
        "nvim-lua/plenary.nvim",

        -- Optional.
        "hrsh7th/nvim-cmp",
        "nvim-telescope/telescope.nvim",
        "nvim-telescope/telescope.nvim",
        "MeanderingProgrammer/markdown.nvim",
    },
    opts = {
        workspaces = {
            {
                name = "work",
                path = "~/notes",
            },
        },

        --Keymaps
         mappings = {
            -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
            ["gf"] = {
              action = function()
                return require("obsidian").util.gf_passthrough()
              end,
              opts = { noremap = false, expr = true, buffer = true },
            },
            -- Smart action depending on context, either follow link or toggle checkbox.
            -- ["<cr>"] = {
            --   action = function()
            --     return require("obsidian").util.smart_action()
            --   end,
            --   opts = { buffer = true, expr = true },
            -- },
            -- Run ObsidianTemplate
            vim.keymap.set( 'n', "<leader>ot" , ":ObsidianTemplate<CR>"),
            vim.keymap.set( 'n', "<leader>ob" , ":ObsidianBacklinks<CR>"),
            vim.keymap.set( 'n', "<leader>oo" , ":ObsidianQuickSwitch<CR>"),
            vim.keymap.set( 'v', "<leader>oln" , ":ObsidianLinkNew<CR>"),
            vim.keymap.set( 'v', "<leader>ol" , ":ObsidianLink<CR>"),
        },
        -- Templates
        templates = {
            folder = "templates",
            date_format = "%Y-%m-%d",
            time_format = "%H:%M",
            -- A map for custom variables, the key should be the variable and the value a function
            substitutions = {
                week = function()
                    return os.date("%V")
                end,
                year = function()
                    return os.date("%Y")
                end,
            },
        },
        -- How new notes are generated
          -- Optional, customize how note IDs are generated given an optional title.
          ---@param title string|?
          ---@return string
          note_id_func = function(title)
            -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
            -- In this case a note with the title 'My new note' will be given an ID that looks
            -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
            -- local suffix = ""
            -- if title ~= nil then
            --   -- If title is given, transform it into valid file name.
            --   suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
            -- else
            --   -- If title is nil, just add 4 random uppercase letters to the suffix.
            --   for _ = 1, 4 do
            --     suffix = suffix .. string.char(math.random(65, 90))
            --   end
            -- end
            -- return tostring(os.time()) .. "-" .. suffix
            -- Por ahora anulo todo esto y dejo que genere con el titutlo directo
            return title
          end,

          -- Optional, customize how note file names are generated given the ID, target directory, and title.
          ---@param spec { id: string, dir: obsidian.Path, title: string|? }
          ---@return string|obsidian.Path The full path to the new note.
          note_path_func = function(spec)
            -- This is equivalent to the default behavior.
            local path = spec.dir / tostring(spec.id)
            return path:with_suffix(".md")
          end,
        -- UI
        ui = {
            enable = false
        },
    },
}
