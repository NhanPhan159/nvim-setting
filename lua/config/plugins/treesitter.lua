return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local on_attach = function(client, bufnr)
        vim.keymap.set('n', 'Q', function()
          require 'nvim-treesitter.textobjects.move'.goto_next_end('@block.outer')
        end, { desc = 'Go to end of scope' })
      end
      require 'nvim-treesitter.configs'.setup {
        on_attach = on_attach,
        ensure_installed = { "cpp", "c", "javascript", "typescript", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
        auto_install = true,

        --  ignore_install = { "javascript" },
        highlight = {
          enable = true,
          disable = function(lang, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
              return true
            end
          end,
          additional_vim_regex_highlighting = false,
        },
      }
    end,
  }
}
