return {
  {
    'stevearc/conform.nvim',
    config = function()
      local prettier = { "prettierd", "prettier", stop_after_first = true }


      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          typescript = prettier,
          javascript = prettier,
          javascriptreact = prettier,
          typescriptreact = prettier,
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
      })
    end
  }
}
