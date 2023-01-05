local opt = vim.opt

opt.colorcolumn = '80'
opt.list = true
opt.listchars = 'trail:·,nbsp:·'
opt.listchars:append "eol:↴"
opt.foldlevelstart = 99
opt.wildmenu = true
opt.wildmode = 'full'
opt.relativenumber = true
opt.number = true

-- autocmds
local autocmd = vim.api.nvim_create_autocmd

-- enable folding for python
autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt.foldmethod = "indent"

  end,
})


