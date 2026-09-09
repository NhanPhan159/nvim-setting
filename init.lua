-- transparent background
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' })
vim.api.nvim_set_hl(0, 'Terminal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'none' })
vim.api.nvim_set_hl(0, 'FoldColumn', { bg = 'none' })
vim.api.nvim_set_hl(0, 'Folded', { bg = 'none' })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })

-- transparent background for neotree
vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NeoTreeVertSplit', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NeoTreeWinSeparator', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NeoTreeEndOfBuffer', { bg = 'none' })

-- transparent background for nvim-tree
vim.api.nvim_set_hl(0, 'NvimTreeNormal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NvimTreeVertSplit', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NvimTreeEndOfBuffer', { bg = 'none' })
vim.g.mapleader = " ";
vim.g.maplocalleader = " ";

require("config.options")
require("config.lazy")
require("config.keymaps")
require("config.autocommand")
local socket = '/tmp/nvim'
if vim.fn.filereadable(socket) == 0 then
  vim.fn.serverstart(socket)
end
