local lga_actions = require("telescope-live-grep-args.actions")

local M = {}

M.mason = {
  ensure_installed = {
    -- lua
    "lua-language-server",
    "stylua",

    -- common
    "json-lsp",
    "sqlls",
    -- js
    "typescript-language-server",
    "eslint-lsp",

    -- python
    "mypy",
    "pylint",
    "pyright",
    -- rust
    "rust-analyzer",
  }
}

M.nvimtree = {
  open_on_setup = true,
  -- open_on_setup_file = true,
  -- ignore_buffer_on_setup = true,
  -- prefer_startup_root = true,
  -- sync_root_with_cwd = true,
  -- respect_buf_cwd = true,
  git = {
    enable = true,
    ignore = true,
    show_on_dirs = true,
  },
}

M.telescope = {
  extensions_list = {
    "projects", "live_grep_args", "themes", "terms",
    "ui-select", "dap"
  },
  extensions = {
    live_grep_args = {
      auto_quoting = false, -- enable/disable auto-quoting
      mappings = { -- extend mappings
        i = {
          ["<C-k>"] = lga_actions.quote_prompt(),
          ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
        },
      },
    },
  },
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      ".git",
      -- uaprom dirs
      "uaprom/public",
      "uaprom/svg_icons",
      "uaprom/sugarss",
      "mypy_stubs",
    },
  }
}

M.nvterm = {
  terminals = {
    type_opts = {
      float = {
        col = 0.1,
        row = 0.1,
        width = 0.9,
        height = 0.8,
      },
      horizontal = {
        split_ratio = 0.5,
      }
    }
  }
}

M.alpha = { }

M.treesitter = {
  ensure_installed = {
    "lua",
    "python",
    "rust",
    "go", "gomod",
    "json", "yaml", "toml", "proto", "graphql",
    "bash",
    "javascript", "typescript",
    "markdown",
    "sql",
  }
}

return M
