local M = {}

M.telescope = {
  n = {
    ["<leader>fg"] = { "<cmd> Telescope grep_string <CR>", "grep string" },
    ["<leader>fw"] = { "<cmd> Telescope live_grep_args<CR>", "live grep" },
  }
}

return M
