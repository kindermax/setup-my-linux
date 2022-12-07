local M = {}

M.telescope = {
  n = {
    ["<leader>fg"] = { "<cmd> Telescope grep_string <CR>", "grep string" },
    ["<leader>fw"] = { "<cmd> Telescope live_grep_args<CR>", "live grep" },
    ["<leader>tm"] = { "<cmd> Telescope marks <CR>", "show marks" },
  }
}

M.general = {
  n = {
    -- mind notes
    ["<leader>mn"] = { "<cmd> MindOpenMain <CR>", "open mind notes" },
    ["<leader>mx"] = { "<cmd> MindClose <CR>", "close mind notes" },
    -- fugitive
    ["<leader>gb"] = { "<cmd> Git blame<CR>", "git blame" },
    ["<leader>gs"] = { "<cmd> Git<CR>", "git status" },

    -- dap
    ["<leader>DR"] = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run to Cursor" },
    ["<leader>DE"] = { "<cmd>lua require'dapui'.eval(vim.fn.input '[Expression] > ')<cr>", "Evaluate Input" },
    ["<leader>DC"] = { "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>",
      "Conditional Breakpoint" },
    ["<leader>DU"] = { "<cmd>lua require'dapui'.toggle()<cr>", "Toggle UI" },
    ["<leader>Db"] = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
    ["<leader>Dc"] = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
    ["<leader>Dd"] = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
    ["<leader>De"] = { "<cmd>lua require'dapui'.eval()<cr>", "Evaluate" },
    ["<leader>Dg"] = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
    ["<leader>Dh"] = { "<cmd>lua require'dap.ui.widgets'.hover()<cr>", "Hover Variables" },
    ["<leader>DS"] = { "<cmd>lua require'dap.ui.widgets'.scopes()<cr>", "Scopes" },
    ["<leader>Di"] = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
    ["<leader>Do"] = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
    ["<leader>Dp"] = { "<cmd>lua require'dap'.pause.toggle()<cr>", "Pause" },
    ["<leader>Dq"] = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
    ["<leader>Dr"] = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
    ["<leader>Ds"] = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
    ["<leader>Dt"] = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
    ["<leader>Dx"] = { "<cmd>lua require'dap'.terminate()<cr>", "Terminate" },
    ["<leader>Du"] = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
  },
  v = {
    -- dap
    ["<leader>De"] = { "<cmd>lua require'dapui'.eval()<cr>", "Evaluate" },
  }
}

return M
