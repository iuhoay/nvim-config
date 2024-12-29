return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "storm",       -- night, storm, day, moon
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
        background = "transparent",
      },
    },
    config = function()
      vim.o.background = "dark"
      vim.cmd("colorscheme tokyonight")
    end
  },

  {
    "ellisonleao/gruvbox.nvim",
    enabled = false,
    priority = 1000,
    config = function()
      -- vim.o.background = "dark"
      -- vim.cmd("colorscheme gruvbox")
    end
  },

  {
    "scottmckendry/cyberdream.nvim",
    enabled = false,
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.o.background = "dark"
      -- vim.cmd("colorscheme cyberdream")
    end
  },

  {
    "catppuccin/nvim",
    enabled = false,
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.o.background = "dark"
      -- vim.cmd("colorscheme catppuccin")
    end
  },

  {
    "neanias/everforest-nvim",
    enabled = false,
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("everforest").setup({
        background = "hard",         -- hard, medium (default), soft
        -- Whether to show the EndOfBuffer highlight.
        show_eob = true,
      })
      -- vim.o.background = "dark"
      -- vim.cmd("colorscheme everforest")
    end
  },
}
