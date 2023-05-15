vim.keymap.set('i', 'jk', '<ESC>')


vim.opt.guicursor = ""
-- 
vim.opt.nu = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.numberwidth = 5
-- 
vim.opt.smartindent = true
-- 
vim.opt.wrap = false
-- 
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
