return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local on_attach = function(client, bufnr)

      end
      require('nvim-treesitter.configs').setup {
        on_attach = on_attach,
        ensure_installed = { "cpp", "c", "javascript", "typescript", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
        auto_install = true,

        --  ignore_install = { "javascript" },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      }
    end,
  }
}
