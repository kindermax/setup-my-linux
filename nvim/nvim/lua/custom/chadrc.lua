local M = {}

local override = require "custom.override"

M.ui = {
  theme = "gatekeeper",
}

M.plugins = {
  override = {
    ["williamboman/mason.nvim"] = override.mason,
  },

  user = require "custom.plugins"
}

M.mappings = require "custom.mappings"

return M
