local M = {}

M.mason = {
  ensure_installed = {
    -- lua
    "lua-language-server",
    "stylua",

    -- common
    "json-lsp",

    -- python
    "mypy",
    "pylint",
    "pyright",
    -- rust
    "rust-analyzer",
  }
}

-- M.nvimtree = {
--   open_on_setup = true,
--   open_on_setup_file = true,
--   ignore_buffer_on_setup = true,
--   prefer_startup_root = true,
--   sync_root_with_cwd = true,
--   respect_buf_cwd = true,
--   git = {
--     enable = true,
--     ignore = true,
--     show_on_dirs = true,
--   },
-- }
--
M.telescope = {
  extensions_list = {"live_grep_args"},
  extensions = {
    live_grep_args = {
      auto_quoting = false, -- enable/disable auto-quoting
    },
  },
}

return M
