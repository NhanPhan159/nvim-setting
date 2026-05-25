local options = {
  number = true,
  clipboard = vim.env.SSH_TTY and "" or "unnamedplus",
  tabstop = 2,
  shiftwidth = 2,
  virtualedit = "block",
  inccommand = "split",
  ignorecase = true,
  updatetime = 500
}
for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.g.lazyvim_cmp = "auto"
vim.diagnostic.config({
  virtual_text = false,
  float = {
    border = 'rounded',
    wrap = true,
    width = 80,
  },
})
