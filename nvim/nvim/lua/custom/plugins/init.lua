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
    end
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
}    
