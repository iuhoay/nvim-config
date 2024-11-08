return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim",
        },
        keys = {
            { "<leader>ft", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
        },
        config = function()
            require("neo-tree").setup()
        end
    },

    {
      "nvim-telescope/telescope-ui-select.nvim",
    },

    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        keys = {
          { "<C-p>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
            -- { "<leader>\\", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
            { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
            { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
            -- { "<leader>fr", "<cmd>Telescope lsp_references<cr>", desc = "References" },
            -- { "<leader>fd", "<cmd>Telescope lsp_definitions<cr>", desc = "Definitions" },
            -- { "<leader>fi", "<cmd>Telescope lsp_implementations<cr>", desc = "Implementations" },
        },
        cmd = {
            "Telescope",
            "TelescopeFindFiles",
            "TelescopeLiveGrep",
            "TelescopeBuffers",
            "TelescopeLspReferences",
            "TelescopeLspDefinitions",
            "TelescopeLspImplementations",
        },
        config = function()
          require("telescope").setup({
            pickers = {
              find_files = {
                hidden = true,
                theme = "ivy",
              },
            },
            extensions = {
              ["ui-select"] = {
                require("telescope.themes").get_dropdown({}),
              }
            },
          })

          require("telescope").load_extension("ui-select")

          -- local telescope = require("telescope")
          -- local telescopeConfig = require("telescope.config")
          --
          -- -- Clone the default Telescope configuration
          -- local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }
          --
          -- -- I want to search in hidden/dot files.
          -- table.insert(vimgrep_arguments, "--hidden")
          -- -- I don't want to search in the `.git` directory.
          -- table.insert(vimgrep_arguments, "--glob")
          -- table.insert(vimgrep_arguments, "!**/.git/*")
          --
          -- telescope.setup({
          --     defaults = {
          --         -- `hidden = true` is not supported in text grep commands.
          --         vimgrep_arguments = vimgrep_arguments,
          --     },
          --     pickers = {
          --         find_files = {
          --             -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
          --             find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
          --         },
          --     },
          -- })
        end
    },
}
