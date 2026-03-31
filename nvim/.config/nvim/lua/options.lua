-- Controls
vim.o.mouse = 'a'
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Behavior
vim.o.confirm = true

vim.o.undofile = true

vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.o.splitright = true
vim.o.splitbelow = true

-- Number
vim.o.number = true
vim.o.relativenumber = true

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true

-- Code style
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.shiftround = true
vim.o.cindent = true
vim.o.colorcolumn = {'80', '100', '120'}
vim.o.signcolumn = 'yes'
vim.o.breakindent = true

-- Visual
vim.o.termguicolors = true
vim.g.have_nerd_font = true

vim.o.showmode = false -- Don't show the mode, since it's already in the status line

vim.o.list = true
vim.o.listchars = { tab = '» ', trail = '·', nbsp = '␣', lead = '·' }

vim.o.cursorline = true

vim.o.inccommand = 'split'

vim.o.scrolloff = 10

-- Highlight when yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

-- Other
vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },

  -- Can switch between these as you prefer
  virtual_text = true, -- Text shows up at the end of the line
  virtual_lines = false, -- Text shows up underneath the line, with virtual lines

  -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
  jump = { float = true },
}

