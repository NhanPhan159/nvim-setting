return {
  'lewis6991/gitsigns.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local gitsigns = require('gitsigns')
    vim.api.nvim_set_hl(0, 'GitSignsAddLine', {
      bg = '#193a2a',
    })

    vim.api.nvim_set_hl(0, 'GitSignsChangeLine', {
      bg = '#193a2a',
    })

    vim.api.nvim_set_hl(0, 'GitSignsDeleteLine', {
      bg = '#f85149',
    })

    vim.api.nvim_set_hl(0, 'GitSignsDelete', {
      fg = '#f85149',
    })

    vim.api.nvim_set_hl(0, 'GitSignsTopdelete', {
      fg = '#f85149',
    })

    vim.api.nvim_set_hl(0, 'GitSignsChangedelete', {
      fg = '#f85149',
    })

    vim.api.nvim_set_hl(0, 'GitSignsDeleteVirtLn', {
      bg = '#3a1f1f',
      fg = '#f85149',
    })

    gitsigns.setup({
      signs = {
        add = {
          text = '▎',
          linehl = 'GitSignsAddLine',
        },

        change = {
          text = '▎',
          linehl = 'GitSignsChangeLine',
        },

        delete = {
          text = 'X',
          linehl = 'GitSignsDeleteLine',
        },

        topdelete = {
          text = 'X',
          linehl = 'GitSignsDeleteLine',
        },

        changedelete = {
          text = '▎',
          linehl = 'GitSignsChangeLine',
        },
      },

      linehl = true,

      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local map = function(mode, l, r, desc)
          vim.keymap.set(mode, l, r, {
            buffer = bufnr,
            desc = desc,
          })
        end

        map('n', ']e', function()
          if vim.wo.diff then
            return ']e'
          end

          vim.schedule(function()
            gs.next_hunk()
          end)

          return '<Ignore>'
        end, 'Next Git change')

        map('n', '[e', function()
          if vim.wo.diff then
            return '[e'
          end

          vim.schedule(function()
            gs.prev_hunk()
          end)

          return '<Ignore>'
        end, 'Previous Git change')

        map('n', '<leader>hs', gs.stage_hunk, 'Stage hunk')
        map('n', '<leader>hr', gs.reset_hunk, 'Reset hunk')
        map('n', '<leader>hp', gs.preview_hunk, 'Preview hunk')
        map('n', '<leader>hb', gs.blame_line, 'Blame line')
      end,
    })
  end,
}
