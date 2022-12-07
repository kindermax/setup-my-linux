local M = {}

local override = require "custom.override"

M.ui = {
  theme_toggle = { "gruvbox", "one_light" },
  theme = "chadracula"
}

M.plugins = {
  override = {
    ["williamboman/mason.nvim"] = override.mason,
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
    ["nvim-telescope/telescope.nvim"] = override.telescope,
    ["goolord/alpha-nvim"] = override.alpha,
    ["NvChad/nvterm"] = override.nvterm,
    ["NvChad/ui"] =  {
      statusline = {
        separator_style = "arrow",
      },
      tabufline = {
        lazyload = false, -- to show tabufline by default
      },
    }
  },

  user = require "custom.plugins"
}

M.mappings = require "custom.mappings"

return M
