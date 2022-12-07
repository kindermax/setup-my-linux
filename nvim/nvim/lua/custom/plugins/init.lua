return {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["nvim-telescope/telescope.nvim"] = {
    requires = {
      { "nvim-telescope/telescope-live-grep-args.nvim" },
      { "nvim-telescope/telescope-ui-select.nvim" },
    },
  },
  ["folke/trouble.nvim"] = {
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end,
  },
  ["folke/which-key.nvim"] = {
    disable = false,
  },
  ["ahmedkhalf/project.nvim"] = {
    config = function()
      require("project_nvim").setup {}
    end
  },
  ["tpope/vim-fugitive"] = {},
  ["github/copilot.vim"] = {
    config = function()
      require "custom.plugins.copilot"
    end,
  },
  ["phaazon/mind.nvim"] = {
    branch = 'v2.2',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require'mind'.setup()
    end
  },
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
  ["Shatur/neovim-session-manager"] = {
    config = function()
      require("session_manager").setup {
        autoload_mode = require('session_manager.config').AutoloadMode.Disabled,
      }
    end
  },
  ["kyazdani42/nvim-tree.lua"] = {
    after = "nvim-web-devicons",
  },
  ["nvim-treesitter/nvim-treesitter-context"] = {
    config = function()
      require'treesitter-context'.setup {
        enable = true,
      }
    end
  },
  ["mfussenegger/nvim-dap"] = {
    wants = { "nvim-dap-virtual-text", "nvim-dap-ui", "nvim-dap-python", "which-key.nvim" },
    requires = {
      "theHamsta/nvim-dap-virtual-text",
      "rcarriga/nvim-dap-ui",
      "mfussenegger/nvim-dap-python",
      "nvim-telescope/telescope-dap.nvim",
      { "leoluz/nvim-dap-go", module = "dap-go" },
      { "jbyuki/one-small-step-for-vimkind", module = "osv" },
    },
    config = function()
      require("custom.plugins.dap").setup()
    end,
  },
  ["folke/todo-comments.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    config = function()
        require("todo-comments").setup {}
      end
  },
  ["kylechui/nvim-surround"] = {
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({ })
    end
  },
}
