local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Normal --
-- Better window navigation
keymap("n", "<S-n>", "<C-w>l", opts)
keymap("n", "<S-h>", "<C-w>h", opts)
keymap("n", "<S-j>", "<C-w>j", opts)
keymap("n", "<S-k>", "<C-w>k", opts)
keymap("n", "[e", vim.diagnostics.goto_next, opts)
keymap("n", "]e", vim.diagnostics.goto_prev, opts)
keymap("n", "<leader>1", "%", opts)
