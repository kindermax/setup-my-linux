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
return M
