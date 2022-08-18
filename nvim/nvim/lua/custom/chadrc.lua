local M = {}

local override = require "custom.override"

M.ui = {
  theme = "gatekeeper",
}

M.plugins = {
  override = {
    ["williamboman/mason.nvim"] = override.mason,
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
    ["nvim-telescope/telescope.nvim"] = override.telescope,
  },

  user = require "custom.plugins"
}

M.mappings = require "custom.mappings"

return M
