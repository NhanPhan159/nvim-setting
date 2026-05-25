return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { 'neovim/nvim-lspconfig', 'mason-org/mason.nvim' },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "eslint", "clangd", "ast-grep", "slint_lsp" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
  }
}
