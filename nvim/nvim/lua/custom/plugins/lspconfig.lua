local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { 
  "html",
  --"cssls",
  --"cssmodules_ls",
  "rust_analyzer",
  "gopls",
  "tsserver",
  "bashls",
  "sqlls",
  "dockerls",
  "graphql",
  "jsonls",
  --"java_language_server",
  --"kotlin_language_server",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end


lspconfig["pyright"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = false,
        useLibraryCodeForTypes = false,
        diagnosticMode = 'openFilesOnly',
      },
    },
  },
}


