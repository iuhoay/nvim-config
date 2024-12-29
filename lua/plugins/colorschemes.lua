return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      -- style = "day",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
        background = "transparent",
      },
    },
    config = function()
      vim.o.background = "dark"
      vim.cmd("colorscheme tokyonight-night")
      -- vim.o.background = "light"
      -- vim.cmd("colorscheme tokyonight-day")
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
