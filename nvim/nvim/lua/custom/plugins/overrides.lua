-- local lga_actions = require("telescope-live-grep-args.actions")

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
  filters = {
    dotfiles = false,
    custom = { "node_modules" },
  },

  git = {
    enable = true,
    ignore = true,
    show_on_dirs = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.telescope = {
  extensions_list = {
    "projects", "live_grep_args", "themes", "terms",
    "ui-select", "dap"
  },
  extensions = {
    live_grep_args = {
      auto_quoting = true, -- default
    },
  },
  defaults = {
    vimgrep_arguments = {
      "rg",
      "-L",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--hidden",
    },
    prompt_prefix = " > ",
    layout_config = {
      width = 0.95,
      height = 0.90,
    },
    file_ignore_patterns = {
      "node_modules",
      "package-lock.json",
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
        col = 0.05,
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

M.ui = {
  statusline = {
    separator_style = "arrow",
  },
  tabufline = {
    lazyload = false, -- to show tabufline by default
  },
}

M.blankline = {
  show_end_of_line = true,
  pace_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
}

return M
