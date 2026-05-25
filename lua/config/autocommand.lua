-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = { 'lua', 'javascript', 'c++', "typescript", "typescriptreact", "javascriptreact" },
--   callback = function()
--     -- Enable Tree-sitter-based folding
--     print("Filetype")
--     vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
--     vim.wo.foldmethod = 'expr'
--   end,
-- })

vim.api.nvim_create_autocmd('CursorHold', {
  callback = function()
    vim.diagnostic.open_float()
  end,
})
