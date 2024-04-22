vim.opt.termguicolors = true

vim.cmd([[highlight IblScope guifg=#5b5856 gui=nocombine]])
vim.cmd([[highlight IblIndent guifg=#3b3836 gui=nocombine]])

require("ibl").setup({})
