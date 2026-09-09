local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- {
    --   "navarasu/onedark.nvim",
    --   priority = 1000, -- make sure to load this before all the other start plugins
    --   config = function()
    --     require('onedark').setup {
    --       style = 'cool'
    --     }
    --     require('onedark').load()
    --   end
    -- },
    -- {
    --   'sainnhe/everforest',
    --   lazy = false,
    --   priority = 1000,
    --   config = function()
    --     vim.g.everforest_enable_italic = true
    --     vim.g.everforest_background = 'soft'
    --
    --     vim.o.background = 'light'
    --     vim.cmd.colorscheme('everforest')
    --   end
    -- },
    -- {
    --   "EdenEast/nightfox.nvim", -- lazy,
    --   name = "nightfox",
    --   priority = 1000,
    --   config = function()
    --     vim.cmd.colorscheme("dayfox")
    --   end,
    -- },
     {
       "catppuccin/nvim",
       name = "catppuccin",
       priority = 1000,
       config = function()
         vim.cmd.colorscheme("catppuccin-latte")
       end,
     },
    --{
    --  "folke/tokyonight.nvim",
    --  lazy = false,
     --  priority = 1000,
 --      opts = {},
   --    config = function()
     --    vim.cmd.colorscheme("tokyonight-day")
--      end,
   --  },
    { import = "config.plugins" }
  },
})
