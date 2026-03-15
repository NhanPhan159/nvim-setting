vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua', 'javascript', 'c++', "typescript", "typescriptreact", "javascriptreact" },
  callback = function()
    -- Enable Tree-sitter-based folding
    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    vim.wo.foldmethod = 'expr'
  end,
})
