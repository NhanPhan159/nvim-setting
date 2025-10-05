return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers",
          separator_style = "slant",
          diagnostics = "nvim_lsp",
          show_buffer_close_icons = true,
          show_close_icon = false,
          always_show_bufferline = true,
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              highlight = "Directory",
              separator = true,
            },
          },

        },
      })
      local opts = { noremap = true, silent = true }
      vim.keymap.set("n", "<leader>q", "<cmd>bdelete<CR>", opts)
      vim.keymap.set("n", "<leader>n", "<cmd>BufferLineCycleNext<CR>", opts)
      vim.keymap.set("n", "<leader>p", "<cmd>BufferLineCyclePrev<CR>", opts)
    end,
  },
}
