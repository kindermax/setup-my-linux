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
    cmd = "Telescope",
    requires = {
      { "nvim-telescope/telescope-live-grep-args.nvim" },
    },
    config = function()
      require "plugins.configs.telescope"
    end,
  },
  ["folke/trouble.nvim"] = {
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end,
  },
  ["goolord/alpha-nvim"] = {
    disable = false,
    cmd = "Alpha",
  },
  ["ahmedkhalf/project.nvim"] = {
    config = function()
      require("project_nvim").setup {}
    end
  },
  ["tpope/vim-fugitive"] = {},
  ["github/copilot.vim"] = {}
}
