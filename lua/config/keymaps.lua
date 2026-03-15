local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap_api = vim.api.nvim_set_keymap
local keymap_set = vim.keymap.set

-- Normal --
-- Better window navigation
keymap_api("n", "<S-n>", "<C-w>l", opts)
keymap_api("n", "<S-h>", "<C-w>h", opts)
keymap_api("n", "<S-j>", "<C-w>j", opts)
keymap_api("n", "<S-k>", "<C-w>k", opts)

-- Action with code
keymap_set("n", "K", function()
  vim.lsp.buf.hover({ border = "rounded" })
end, { desc = "show documentation" }, opts)
