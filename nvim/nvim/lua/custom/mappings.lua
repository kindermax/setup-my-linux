local M = {}

M.telescope = {
  n = {
    ["<leader>fg"] = { "<cmd> Telescope grep_string <CR>", "   grep string" },
  }
}

return M
