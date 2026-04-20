local options = {
  number = true,
  clipboard = vim.env.SSH_TTY and "" or "unnamedplus",
  tabstop = 2,
  shiftwidth = 2,
  virtualedit = "block",
  inccommand = "split",
  ignorecase = true,
}




for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.g.lazyvim_cmp = "auto"
