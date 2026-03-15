return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("bufferline").setup({
				options = {
					mode = "buffers",
					separator_style = "thick",
					diagnostics = "nvim_lsp",
					show_buffer_close_icons = false,
					show_close_icon = false,
					always_show_bufferline = true,
					indicator = {
						style = 'underline',
					},
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
			vim.keymap.set("n", "<leader>m", "<cmd>BufferLineCyclePrev<CR>", opts)
		end,
	},
}
