local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  -- b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } },
  -- b.code_actions.eslint,
  -- b.diagnostics.eslint,

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- python
  -- b.diagnostics.mypy,
  b.diagnostics.flake8,

  -- misc
  -- TODO: needs to install plugin
  -- b.code_actions.refactoring,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
