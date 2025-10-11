return {
  'lewis6991/gitsigns.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local gitsigns = require('gitsigns')
    gitsigns.setup {
      signs = {
        add          = { text = '▎' },
        change       = { text = '▎' },
        delete       = { text = 'X' },
        topdelete    = { text = 'X' },
        changedelete = { text = '▎' },
      },
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        local map = function(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
        end

        map('n', ']e', function()
          if vim.wo.diff then return ']e' end
          vim.schedule(function() gs.next_hunk() end)
          return '<Ignore>'
        end, 'Next Git change')

        map('n', '[e', function()
          if vim.wo.diff then return '[e' end
          vim.schedule(function() gs.prev_hunk() end)
          return '<Ignore>'
        end, 'Previous Git change')

        -- Thao tác với hunk
        map('n', '<leader>hs', gs.stage_hunk, 'Stage hunk')
        map('n', '<leader>hr', gs.reset_hunk, 'Reset hunk')
        map('n', '<leader>hp', gs.preview_hunk, 'Preview hunk')
        map('n', '<leader>hb', gs.blame_line, 'Blame line')
      end,
    }
  end
}
