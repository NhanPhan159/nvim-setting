return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").lua_ls.setup {}
      require("lspconfig").ts_ls.setup {}
      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if client.supports_method('textDocument/rename') then
            -- Create a keymap for vim.lsp.buf.rename()
            vim.api.nvim_create_autocmd('BufWritePre', {
              buffer = args.buf,
              callback = function()
                vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
              end,
            })
          end
          if client.supports_method('textDocument/implementation') then
            -- Create a keymap for vim.lsp.buf.implementation
          end
        end,
      })
    end,
  }
}
