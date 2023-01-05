vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true

vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

vim.g.copilot_filetypes = {
  ["*"] = false,
  ["python"] = true,
  ["javascript"] = true,
  ["typescript"] = true,
  ["go"] = true,
  ["yaml"] = true,
  ["rust"] = true,
  ["lua"] = true,
  ["proto"] = true,
}


