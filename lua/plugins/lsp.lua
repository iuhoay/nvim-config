return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        opts = {
            ensure_installed = {
                "tailwindcss-language-server",
            },
        },
        config = function()
          require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
          auto_install = true,
        },
        -- config = function()
        --     require("mason-lspconfig").setup({
        --       ensure_installed = { "lua_ls" },
        --       automatic_installation = true,
        --     })
        -- end
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
          local capabilites = require("cmp_nvim_lsp").default_capabilities()

          local lspconfig = require("lspconfig")
          lspconfig.lua_ls.setup({
            capabilities = capabilites
          })

          -- lspconfig.ruby_lsp.setup({
          --   capabilities = capabilites
          -- })

          require("lspconfig").rubocop.setup({
            cmd = { "bundle", "exec", "rubocop", "--lsp" },
            filetypes = { "ruby" },
          })

          vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "hover documentation LSP" })
          vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Action LSP" })
          vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { desc = "GOTO Definition LSP" })
          vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, { desc = "GOTO References LSP" })
          vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, { desc = "Format File LSP" })
          vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = "Rename LSP" })
        end,
    },
}
