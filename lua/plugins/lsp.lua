return {
    {
        {
            "williamboman/mason.nvim",
            config = function()
                require("mason").setup()
            end
        },
        {
            "williamboman/mason-lspconfig.nvim",
            config = function()
                require("mason-lspconfig").setup()
            end
        },
        {
            "neovim/nvim-lspconfig",
            event = "BufReadPre",
            config = function()
                require("lspconfig").rubocop.setup({
                    cmd = { "bundle", "exec", "rubocop", "--lsp" },
                    filetypes = { "ruby" },
                })
            end
        }
    }
}
