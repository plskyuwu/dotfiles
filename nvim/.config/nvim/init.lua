vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.signcolumn = "yes"
vim.o.termguicolors = true

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣', lead = '·' }

vim.o.inccommand = "split"

vim.o.wrap = false
vim.o.sidescroll = 10
vim.o.scrolloff = 10

vim.o.undofile = true
vim.o.confirm = true

vim.opt.colorcolumn = { "80", "100", "120" }

vim.cmd.colorscheme "vim"
