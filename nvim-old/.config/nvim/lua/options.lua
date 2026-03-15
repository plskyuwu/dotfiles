vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.cindent = true
vim.opt.colorcolumn = {"80", "100", "120"}
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.confirm = true
vim.opt.signcolumn = "yes"


vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣', lead = '·' }

vim.opt.mouse = ""
vim.opt.clipboard = "unnamedplus"

vim.opt.termguicolors = true
