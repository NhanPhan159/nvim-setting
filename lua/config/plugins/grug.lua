return {
  "MagicDuck/grug-far.nvim",
  cmd = "GrugFar",
  config = function()
    _G.__grug_far_open_float = function()
      local width = math.floor(vim.o.columns * 0.8)
      local height = math.floor(vim.o.lines * 0.8)
      local buf = vim.api.nvim_create_buf(false, true)
      vim.api.nvim_open_win(buf, true, {
        relative = "editor",
        width = width,
        height = height,
        row = math.floor((vim.o.lines - height) / 2),
        col = math.floor((vim.o.columns - width) / 2),
        style = "minimal",
        border = "rounded",
      })
    end

    require("grug-far").setup({
      windowCreationCommand = "lua __grug_far_open_float()",
    })
  end,
}
