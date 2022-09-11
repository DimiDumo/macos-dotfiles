vim.cmd("autocmd!")

vim.wo.number = true

vim.g.mapleader = " "
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
-- vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
-- vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.laststatus = 3
-- vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }
vim.opt.relativenumber = true
vim.cmd('au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=300}')
vim.keymap.set('n', '<Leader>q', ':q<CR>')

-- splits and tabs
vim.keymap.set('n', '<Leader>t', ':tabnew<CR>')
vim.keymap.set('n', '<Leader>s', ':vnew<CR>')
vim.keymap.set('n', '<Leader>v', ':new<CR>')
vim.keymap.set('n', '<Leader>h', '<C-w>h')
vim.keymap.set('n', '<Leader>j', '<C-w>j')
vim.keymap.set('n', '<Leader>k', '<C-w>k')
vim.keymap.set('n', '<Leader>l', '<C-w>l')

vim.keymap.set('n', '<Leader>s', ':vnew<CR>')

-- Add asterisks in block comments
-- vim.opt.formatoptions:append { 'r' }

vim.opt.undofile = true
vim.opt.undodir = '/Users/dimitridumonet/.config/nvim/.vimundo'
vim.keymap.set('n', '<Leader>n', ':nohl<CR>')
