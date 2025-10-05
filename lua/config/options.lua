local options = {
  number = true,
  clipboard = vim.env.SSH_TTY and "" or "unnamedplus"
}
for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.g.lazyvim_cmp = "auto"
